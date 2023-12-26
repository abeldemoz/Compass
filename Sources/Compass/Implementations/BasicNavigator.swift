//
// BasicNavigator.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

public final class BasicNavigator {

    let makeNavigationController: () -> NavigationController
    private(set) var navigationControllers: [NavigationController] = []

    private var activeNavigationController: NavigationController? { navigationControllers.last }

    public init(
        navigationController: NavigationController,
        makeNavigationController: @escaping () -> NavigationController
    ) {
        self.makeNavigationController = makeNavigationController
        navigationControllers = [navigationController]
    }
}

extension BasicNavigator: Navigator {

    public func navigate(to viewController: inout ViewController, transition: Transition, onDismissed: (() -> Void)?) {

        switch transition {
        case let .push(animated):
            viewController.onDismissed = onDismissed
            activeNavigationController?.pushViewController(viewController, animated: animated)
        case let .modal(animated, presentationStyle, transitionStyle, isModalInPresentation):
            var navigationController = makeNavigationController()
            navigationController.viewControllersStack = [viewController]
            navigationController.modalPresentationStyle = presentationStyle
            navigationController.modalTransitionStyle = transitionStyle
            navigationController.isModalInPresentation = isModalInPresentation
            navigationController.onDismissed = { [weak self] in
                onDismissed?()
                _ = self?.navigationControllers.removeAll(where: { bnc in
                    bnc === navigationController
                })
            }
            activeNavigationController?.present(navigationController, animated: animated)
            navigationControllers.append(navigationController)
        }
    }

    public func exitFlow(coordinator: Coordinator, animated: Bool) {
        guard
            let activeNavigationController,
            let rootViewController = coordinator.rootViewController,
            let index = activeNavigationController.viewControllersStack.firstIndex(where: { viewController in
                rootViewController === viewController
            })
        else { return }

        guard index > 0 else {
            dismiss(animated: animated)
            return
        }

        let viewControllerPrecedingFlow = activeNavigationController.viewControllersStack[index - 1]

        popToViewController(viewControllerPrecedingFlow, animated: animated)

    }

    public func dismiss(animated: Bool) {
        guard let presentingViewController = activeNavigationController?.presentingViewController else {
            return
        }
        presentingViewController.dismiss(animated: animated)
        _ = navigationControllers.popLast()
    }

    public func popViewController(animated: Bool) {
        activeNavigationController?.popTopViewController(animated: animated)
    }

    public func popToViewController(_ viewController: ViewController, animated: Bool) {
        activeNavigationController?.popToViewController(viewController, animated: animated)
    }

    public func popToRootViewController(animated: Bool) {
        activeNavigationController?.popToTheRootViewController(animated: animated)
    }
}

//
// BasicNavigator.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

public final class BasicNavigator {

    private let makeNavigationController: () -> NavigationController

    private var rootViewController: ViewController?
    private var activeNavigationController: NavigationController? { navigationControllers.last }
    private var navigationControllers: [NavigationController] = [] {
        willSet { rootViewController = newValue.last?.viewControllersStack.first }
    }

    init(
        navigationController: NavigationController,
        makeNavigationController: @escaping () -> NavigationController
    ) {
        self.makeNavigationController = makeNavigationController
        navigationControllers = [navigationController]
    }
}

extension BasicNavigator: Navigator {
    public func present(_ viewController: inout ViewController, transition: Transition, onDismissed: (() -> Void)?) {

        switch transition {
        case let .push(animated):
            viewController.onDismissed = onDismissed
            navigationControllers.last?.pushViewController(viewController, animated: animated)
        case let .modal(animated, presentationStyle, transitionStyle, isModalInPresentation):
            var basicNavigationController = makeNavigationController()
            basicNavigationController.viewControllersStack = [viewController]
            basicNavigationController.modalPresentationStyle = presentationStyle
            basicNavigationController.modalTransitionStyle = transitionStyle
            basicNavigationController.isModalInPresentation = isModalInPresentation
            basicNavigationController.onDismissed = { [weak self] in
                onDismissed?()
                _ = self?.navigationControllers.removeAll(where: { bnc in
                    bnc === basicNavigationController
                })
            }
            navigationControllers.last?.present(basicNavigationController, animated: animated)
            navigationControllers.append(basicNavigationController)
        }
    }

    public func dismiss(animated: Bool) {

        guard let activeNavigationController else {
            return
        }

        guard activeNavigationController.presentingViewController == nil else {
            activeNavigationController.presentingViewController?.dismiss(animated: animated)
            _ = navigationControllers.popLast()
            return
        }

        guard rootViewController != nil else {
            activeNavigationController.popToTheRootViewController(animated: animated)
            return
        }

        activeNavigationController.popTopViewController(animated: animated)
    }
}

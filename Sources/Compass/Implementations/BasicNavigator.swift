//
// BasicNavigator.swift
//
//
// Created by Abel Demoz on 27/12/2023.
//

import UIKit

public final class BasicNavigator {

    private let navigationController: NavigationController

    private var activeViewController: ViewController {
        var avc: ViewController = navigationController

        while let presentedViewController = avc.presentedViewController {
            avc = presentedViewController
        }

        return avc
    }

    public init(navigationController: NavigationController) {
        self.navigationController = navigationController
    }
}

extension BasicNavigator: Navigator {

    public func navigate(to viewController: ViewController, transition: Transition) {

        switch transition {
        case let .push(animated: animated):
            push(viewController, animated: animated)
        case let .modal(animated: animated):
            present(viewController, animated: animated)
        }
    }

    public func exitFlow(coordinator: Coordinator, animated: Bool) {

        guard
            let baseViewController = coordinator.baseViewController
        else { return }

        if baseViewController.presentedViewController != nil {
            baseViewController.dismiss(animated: animated)
        }

        if baseViewController is NavigationController, baseViewController.presentingViewController != nil {
            baseViewController.presentingViewController?.dismiss(animated: animated)
            return
        }

        if let navigationController = baseViewController.navigationController, let index = navigationController.viewControllersStack.firstIndex(where: { viewController in
            baseViewController === viewController
        }) {
            if index > 0 {
                let viewControllerPrecedingFlow = navigationController.viewControllersStack[index - 1]

                popToViewController(viewControllerPrecedingFlow, animated: animated)
            } else {
                navigationController.presentingViewController?.dismiss(animated: animated)
            }
        }
    }

    private func present(_ viewController: ViewController, animated: Bool) {
        activeViewController.present(viewController, animated: animated)
    }

    private func push(_ viewController: ViewController, animated: Bool) {

        guard let activeNavigationController = activeViewController as? NavigationController else {
            return
        }

        activeNavigationController.pushViewController(viewController, animated: animated)
    }

    public func dismiss(animated: Bool) {
        activeViewController.dismiss(animated: animated)
    }

    public func popViewController(animated: Bool) {
        guard let activeNavigationController = activeViewController as? NavigationController else {
            return
        }

        activeNavigationController.popTopViewController(animated: animated)
    }

    public func popToViewController(_ viewController: ViewController, animated: Bool) {
        guard let activeNavigationController = activeViewController as? NavigationController else {
            return
        }

        activeNavigationController.popToViewController(viewController, animated: animated)
    }

    public func popToRootViewController(animated: Bool) {
        guard let activeNavigationController = activeViewController as? NavigationController else {
            return
        }

        activeNavigationController.popToTheRootViewController(animated: animated)
    }
}

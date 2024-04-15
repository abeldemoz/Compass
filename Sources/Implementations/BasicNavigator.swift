//
// BasicNavigator.swift
//
//
// Created by Abel Demoz on 27/12/2023.
//

import UIKit

public final class BasicNavigator {

    private let navigationController: UINavigationController

    private var activeViewController: UIViewController {
        var avc: UIViewController = navigationController

        while let presentedViewController = avc.presentedViewController {
            avc = presentedViewController
        }

        return avc
    }

    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

extension BasicNavigator: Navigator {

    public func navigate(to viewController: UIViewController, transition: Transition) {

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

        if baseViewController is UINavigationController, baseViewController.presentingViewController != nil {
            baseViewController.presentingViewController?.dismiss(animated: animated)
            return
        }

        if let navigationController = baseViewController.navigationController, let index = navigationController.viewControllers.firstIndex(where: { viewController in
            baseViewController === viewController
        }) {
            if index > 0 {
                let viewControllerPrecedingFlow = navigationController.viewControllers[index - 1]

                popToViewController(viewControllerPrecedingFlow, animated: animated)
            } else {
                navigationController.setViewControllers([], animated: animated)
            }
        }
    }

    private func present(_ viewController: UIViewController, animated: Bool) {
        activeViewController.present(viewController, animated: animated)
    }

    private func push(_ viewController: UIViewController, animated: Bool) {

        guard let activeNavigationController = activeViewController as? UINavigationController else {
            return
        }

        activeNavigationController.pushViewController(viewController, animated: animated)
    }

    public func dismiss(animated: Bool) {
        activeViewController.dismiss(animated: animated)
    }

    public func popViewController(animated: Bool) {
        guard let activeNavigationController = activeViewController as? UINavigationController else {
            return
        }

        activeNavigationController.popViewController(animated: animated)
    }

    public func popToViewController(_ viewController: UIViewController, animated: Bool) {
        guard let activeNavigationController = activeViewController as? UINavigationController else {
            return
        }

        activeNavigationController.popToViewController(viewController, animated: animated)
    }

    public func popToRootViewController(animated: Bool) {
        guard let activeNavigationController = activeViewController as? UINavigationController else {
            return
        }

        activeNavigationController.popToRootViewController(animated: animated)
    }
}

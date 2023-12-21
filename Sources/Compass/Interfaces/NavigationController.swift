//
// NavigationController.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

public protocol NavigationController: AnyObject, ViewController {
    var delegate: UINavigationControllerDelegate? { get set }
    var topMostViewController: ViewController? { get }
    var currentlyVisibleViewController: ViewController? { get }
    var viewControllersStack: [ViewController] { get set }
    var interactivePopGestureRecognizer: UIGestureRecognizer? { get }
    var navigationBar: UINavigationBar { get }
    var toolbar: UIToolbar! { get }
    var isToolbarHidden: Bool { get }
    var hidesBarsOnTap: Bool { get set }
    var hidesBarsOnSwipe: Bool { get set }
    var hidesBarsWhenVerticallyCompact: Bool { get set }
    var hidesBarsWhenKeyboardAppears: Bool { get set }
    var isNavigationBarHidden: Bool { get set }
    var barHideOnTapGestureRecognizer: UITapGestureRecognizer { get }
    var barHideOnSwipeGestureRecognizer: UIPanGestureRecognizer { get }
    static var hideShowBarDuration: CGFloat { get }

    func setViewControllers(_ viewControllers: [ViewController], animated: Bool)
    func pushViewController(_ viewController: ViewController, animated: Bool)
    @discardableResult
    func popTopViewController(animated: Bool) -> ViewController?
    @discardableResult
    func popToTheRootViewController(animated: Bool) -> [ViewController]?
    @discardableResult
    func popToViewController(_ viewController: ViewController, animated: Bool) -> [ViewController]?
    func setNavigationBarHidden(_ hidden: Bool, animated: Bool)
    func setToolbarHidden(_ hidden: Bool, animated: Bool)
    func show(_ vc: ViewController, sender: Any?)
}

public extension NavigationController {
    var topMostViewController: ViewController? {
        guard
            let selfAsUINavigationController = self as? UINavigationController,
            let topViewController = selfAsUINavigationController.topViewController
        else { return nil }

        return topViewController as? ViewController
    }

    var currentlyVisibleViewController: ViewController? {
        guard
            let selfAsUINavigationController = self as? UINavigationController,
            let visibleViewController = selfAsUINavigationController.visibleViewController
        else { return nil }

        return visibleViewController as? ViewController
    }

    var viewControllersStack: [ViewController] {
        get {
            guard
                let selfAsUINavigationController = self as? UINavigationController,
                let viewControllersStack = selfAsUINavigationController.viewControllers as? [ViewController]
            else { return [] }

            return viewControllersStack
        }

        set {
            guard
                let selfAsUINavigationController = self as? UINavigationController,
                let viewControllersToSet = newValue as? [UIViewController]
            else { return }
            selfAsUINavigationController.viewControllers = viewControllersToSet
        }
    }

    func setViewControllers(_ viewControllers: [ViewController], animated: Bool) {
        guard
            let selfAsUINavigationController = self as? UINavigationController,
            let viewControllersToSet = viewControllers as? [UIViewController]
        else { return }

        selfAsUINavigationController.setViewControllers(viewControllersToSet, animated: animated)
    }

    func pushViewController(_ viewController: ViewController, animated: Bool) {
        guard
            let selfAsUINavigationController = self as? UINavigationController,
            let viewControllerToPush = viewController as? UIViewController
        else { return }

        selfAsUINavigationController.pushViewController(viewControllerToPush, animated: animated)
    }

    func popTopViewController(animated: Bool) -> ViewController? {
        guard
            let selfAsUINavigationController = self as? UINavigationController
        else { return nil }

        return selfAsUINavigationController.popViewController(animated: animated) as? ViewController
    }

    func popToTheRootViewController(animated: Bool) -> [ViewController]? {
        guard
            let selfAsUINavigationController = self as? UINavigationController
        else { return nil }

        return selfAsUINavigationController.popToRootViewController(animated: animated) as? [ViewController]
    }

    func popToViewController(_ viewController: ViewController, animated: Bool) -> [ViewController]? {
        guard
            let selfAsUINavigationController = self as? UINavigationController,
            let viewControllerToPopTo = viewController as? UIViewController
        else { return nil }

        return selfAsUINavigationController.popToViewController(viewControllerToPopTo, animated: animated) as? [ViewController]
    }
}

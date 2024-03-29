//
// TabBarController.swift
//
//
// Created by Abel Demoz on 29/03/2024.
//

import UIKit

public protocol TabBarController: AnyObject, ViewController {
    var delegate: UITabBarControllerDelegate? { get set }
    var tabBar: UITabBar { get }
    var viewControllers: [ViewController]? { get set }
    var customizableViewControllers: [ViewController]? { get set }
    var moreNavigationController: NavigationController { get }
    var selectedViewController: UIViewController? { get set }
    var selectedIndex: Int { get set }

    func setViewControllers(_ viewControllers: [ViewController]?, animated: Bool)
}

public extension TabBarController {
    var viewControllers: [ViewController]? {
        get {
            guard
                let selfAsUITabBarController = self as? UITabBarController,
                let viewControllersStack = selfAsUITabBarController.viewControllers
            else { return [] }

            return viewControllersStack as? [ViewController]
        }

        set {
            guard
                let selfAsUITabBarController = self as? UITabBarController,
                let viewControllersToSet = newValue as? [UIViewController]
            else { return }

            selfAsUITabBarController.viewControllers = viewControllersToSet
        }
    }

    var customizableViewControllers: [ViewController]? {
        get {
            guard
                let selfAsUITabBarController = self as? UITabBarController,
                let viewControllersStack = selfAsUITabBarController.customizableViewControllers
            else { return [] }

            return viewControllersStack as? [ViewController]
        }

        set {
            guard
                let selfAsUITabBarController = self as? UITabBarController,
                let viewControllersToSet = newValue as? [UIViewController]
            else { return }

            selfAsUITabBarController.customizableViewControllers = viewControllersToSet
        }
    }

    var moreNavigationController: NavigationController {
        guard
            let selfAsUITabBarController = self as? UITabBarController,
            let moreNavController = selfAsUITabBarController.moreNavigationController as? NavigationController
        else { return BasicNavigationController() }

        return moreNavController
    }

    func setViewControllers(_ viewControllers: [ViewController]?, animated: Bool) {
        guard
            let selfAsUITabBarController = self as? UITabBarController,
            let viewControllersToSet = viewControllers as? [UIViewController]?
        else { return }

        selfAsUITabBarController.viewControllers = viewControllersToSet
    }
}

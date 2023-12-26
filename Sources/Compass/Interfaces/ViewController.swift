//
// ViewController.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

public protocol ViewController: AnyObject, Dismissable {

    var title: String? { get set }
    var isBeingDismissed: Bool { get }
    var isBeingPresented: Bool { get }
    var isMovingFromParent: Bool { get }
    var isMovingToParent: Bool { get }
    var modalPresentationStyle: UIModalPresentationStyle { get set }
    var modalTransitionStyle: UIModalTransitionStyle { get set }
    var isModalInPresentation: Bool { get set }
    var definesPresentationContext: Bool { get set }
    var providesPresentationContextTransitionStyle: Bool { get set }
    var disablesAutomaticKeyboardDismissal: Bool { get }
    var overrideUserInterfaceStyle: UIUserInterfaceStyle { get set }
    var presentingViewController: ViewController? { get }
    var presentedViewController: ViewController? { get }
    var navigationController: NavigationController? { get }
    var tabBarController: UITabBarController? { get }
    var hidesBottomBarWhenPushed: Bool { get set }

    func loadView()
    func viewDidLoad()
    func loadViewIfNeeded()
    func viewWillAppear(_ animated: Bool)
    func viewIsAppearing(_ animated: Bool)
    func viewDidAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
    func viewDidDisappear(_ animated: Bool)

    func viewSafeAreaInsetsDidChange()
    func viewWillLayoutSubviews()
    func viewDidLayoutSubviews()
    func updateViewConstraints()

    func show(_ vc: ViewController, sender: Any?)
    func showDetailViewController(_ vc: ViewController, sender: Any?)
    func present(_ viewControllerToPresent: ViewController, animated flag: Bool, completion: (() -> Void)?)
    func dismiss(animated flag: Bool)
}

public extension ViewController {

    var presentingViewController: ViewController? {
        guard
            let selfAsViewController = self as? UIViewController,
            let presentingViewController = selfAsViewController.presentingViewController as? ViewController
        else { return nil }

        return presentingViewController
    }

    var presentedViewController: ViewController? {
        guard
            let selfAsViewController = self as? UIViewController,
            let presentedViewController = selfAsViewController.presentedViewController as? ViewController
        else { return nil }

        return presentedViewController
    }

    var navigationController: NavigationController? {
        guard
            let selfAsViewController = self as? UIViewController,
            let navigationController = selfAsViewController.navigationController as? NavigationController
        else { return nil }

        return navigationController
    }

    func show(_ vc: ViewController, sender: Any?) {
        guard
            let selfAsUIViewController = self as? UIViewController,
            let vcAsUIViewController = vc as? UIViewController
        else { return }

        selfAsUIViewController.show(vcAsUIViewController, sender: sender)
    }

    func showDetailViewController(_ vc: ViewController, sender: Any?) {
        guard
            let selfAsUIViewController = self as? UIViewController,
            let vcAsUIViewController = vc as? UIViewController
        else { return }

        selfAsUIViewController.showDetailViewController(vcAsUIViewController, sender: sender)
    }

    func present(_ viewControllerToPresent: ViewController, animated flag: Bool, completion: (() -> Void)?) {
        guard
            let selfAsUIViewController = self as? UIViewController,
            let vcAsUIViewController = viewControllerToPresent as? UIViewController
        else { return }

        selfAsUIViewController.present(vcAsUIViewController, animated: flag, completion: completion)
    }

    func present(_ viewControllerToPresent: ViewController, animated flag: Bool) {
        present(viewControllerToPresent, animated: flag, completion: nil)
    }

    func dismiss(animated flag: Bool) {
        guard
            let selfAsUIViewController = self as? UIViewController
        else { return }

        selfAsUIViewController.dismiss(animated: flag, completion: nil)
    }
}

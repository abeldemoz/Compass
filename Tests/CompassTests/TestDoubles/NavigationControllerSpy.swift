//
// NavigationControllerSpy.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import Compass
import UIKit

final class NavigationControllerSpy: NavigationController {

    enum MethodCall: Equatable {
        case dismiss(animated: Bool)
        case setNavigationBarHidden(_ hidden: Bool, animated: Bool)
        case setToolbarHidden(_ hidden: Bool, animated: Bool)
        case loadView
        case viewDidLoad
        case loadViewIfNeeded
        case viewWillAppear(_ animated: Bool)
        case viewIsAppearing(_ animated: Bool)
        case viewDidAppear(_ animated: Bool)
        case viewWillDisappear(_ animated: Bool)
        case viewDidDisappear(_ animated: Bool)
        case viewSafeAreaInsetsDidChange
        case viewWillLayoutSubviews
        case viewDidLayoutSubviews
        case updateViewConstraints
        case setViewControllers(animated: Bool)
        case pushViewController(animated: Bool)
        case popTopViewController(animated: Bool)
        case popToTheRootViewController(animated: Bool)
        case popToViewController(animated: Bool)
        case present(animated: Bool)
    }

    var log: [MethodCall] = []

    var onDismissed: (() -> Void)? = nil
    var delegate: UINavigationControllerDelegate? = nil
    var interactivePopGestureRecognizer: UIGestureRecognizer? = nil
    var navigationBar: UINavigationBar = .init()
    var toolbar: UIToolbar! = UIToolbar()
    var isToolbarHidden: Bool = false
    var hidesBarsOnTap: Bool = false
    var hidesBarsOnSwipe: Bool = false
    var hidesBarsWhenVerticallyCompact: Bool = false
    var hidesBarsWhenKeyboardAppears: Bool = false
    var isNavigationBarHidden: Bool = false
    var barHideOnTapGestureRecognizer: UITapGestureRecognizer = .init()
    var barHideOnSwipeGestureRecognizer: UIPanGestureRecognizer = .init()
    var title: String? = nil
    var isBeingDismissed: Bool = false
    var isBeingPresented: Bool = false
    var isMovingFromParent: Bool = false
    var isMovingToParent: Bool = false
    var modalPresentationStyle: UIModalPresentationStyle = .automatic
    var modalTransitionStyle: UIModalTransitionStyle = .coverVertical
    var isModalInPresentation: Bool = false
    var definesPresentationContext: Bool = false
    var providesPresentationContextTransitionStyle: Bool = false
    var disablesAutomaticKeyboardDismissal: Bool = false
    var overrideUserInterfaceStyle: UIUserInterfaceStyle = .unspecified
    var tabBarController: UITabBarController? = nil
    var hidesBottomBarWhenPushed: Bool = false
    var topMostViewController: ViewController? = nil
    var currentlyVisibleViewController: ViewController? = nil
    var viewControllersStack: [ViewController] = []
    var _presentingViewController: ViewController? = nil
    var presentingViewController: ViewController? { _presentingViewController }
    static var hideShowBarDuration: CGFloat = .init()

    func setNavigationBarHidden(_ hidden: Bool, animated: Bool) {
        log.append(.setNavigationBarHidden(hidden, animated: animated))
    }

    func setToolbarHidden(_ hidden: Bool, animated: Bool) {
        log.append(.setToolbarHidden(hidden, animated: animated))
    }

    func loadView() {
        log.append(.loadView)
    }

    func viewDidLoad() {
        log.append(.viewDidLoad)
    }

    func loadViewIfNeeded() {
        log.append(.loadViewIfNeeded)
    }

    func viewWillAppear(_ animated: Bool) {
        log.append(.viewWillAppear(animated))
    }

    func viewIsAppearing(_ animated: Bool) {
        log.append(.viewIsAppearing(animated))
    }

    func viewDidAppear(_ animated: Bool) {
        log.append(.viewDidAppear(animated))
    }

    func viewWillDisappear(_ animated: Bool) {
        log.append(.viewWillDisappear(animated))
    }

    func viewDidDisappear(_ animated: Bool) {
        log.append(.viewDidDisappear(animated))
    }

    func viewSafeAreaInsetsDidChange() {
        log.append(.viewSafeAreaInsetsDidChange)
    }

    func viewWillLayoutSubviews() {
        log.append(.viewWillLayoutSubviews)
    }

    func viewDidLayoutSubviews() {
        log.append(.viewDidLayoutSubviews)
    }

    func updateViewConstraints() {
        log.append(.updateViewConstraints)
    }

    func dismiss(animated: Bool) {
        log.append(.dismiss(animated: animated))
    }

    func setViewControllers(_ viewControllers: [ViewController], animated: Bool) {
        log.append(.setViewControllers(animated: animated))
    }

    func pushViewController(_ viewController: ViewController, animated: Bool) {
        log.append(.pushViewController(animated: animated))
    }

    func popTopViewController(animated: Bool) -> ViewController? {
        log.append(.popTopViewController(animated: animated))
        return nil
    }

    func popToTheRootViewController(animated: Bool) -> [ViewController]? {
        log.append(.popToTheRootViewController(animated: animated))
        return nil
    }

    func popToViewController(_ viewController: ViewController, animated: Bool) -> [ViewController]? {
        log.append(.popToViewController(animated: animated))

        return nil
    }

    func present(_ viewControllerToPresent: ViewController, animated flag: Bool, completion: (() -> Void)?) {
        log.append(.present(animated: flag))
    }
}

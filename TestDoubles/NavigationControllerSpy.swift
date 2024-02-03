//
// NavigationControllerSpy.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import Compass
import UIKit

public final class NavigationControllerSpy: NavigationController {

    public enum MethodCall: Equatable {
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

    public var log: [MethodCall] = []

    public var onDismissed: (() -> Void)? = nil
    public var delegate: UINavigationControllerDelegate? = nil
    public var interactivePopGestureRecognizer: UIGestureRecognizer? = nil
    public var navigationBar: UINavigationBar = .init()
    public var toolbar: UIToolbar! = UIToolbar()
    public var isToolbarHidden: Bool = false
    public var hidesBarsOnTap: Bool = false
    public var hidesBarsOnSwipe: Bool = false
    public var hidesBarsWhenVerticallyCompact: Bool = false
    public var hidesBarsWhenKeyboardAppears: Bool = false
    public var isNavigationBarHidden: Bool = false
    public var barHideOnTapGestureRecognizer: UITapGestureRecognizer = .init()
    public var barHideOnSwipeGestureRecognizer: UIPanGestureRecognizer = .init()
    public var title: String? = nil
    public var isBeingDismissed: Bool = false
    public var isBeingPresented: Bool = false
    public var isMovingFromParent: Bool = false
    public var isMovingToParent: Bool = false
    public var modalPresentationStyle: UIModalPresentationStyle = .automatic
    public var modalTransitionStyle: UIModalTransitionStyle = .coverVertical
    public var isModalInPresentation: Bool = false
    public var definesPresentationContext: Bool = false
    public var providesPresentationContextTransitionStyle: Bool = false
    public var disablesAutomaticKeyboardDismissal: Bool = false
    public var overrideUserInterfaceStyle: UIUserInterfaceStyle = .unspecified
    public var tabBarController: UITabBarController? = nil
    public var hidesBottomBarWhenPushed: Bool = false
    public var topMostViewController: ViewController? = nil
    public var currentlyVisibleViewController: ViewController? = nil
    public var viewControllersStack: [ViewController] = []
    public var _presentingViewController: ViewController? = nil
    public var presentingViewController: ViewController? { _presentingViewController }
    public var presentationController: UIPresentationController? = nil
    public var sheetPresentationController: UISheetPresentationController? = nil
    public var activePresentationController: UIPresentationController? = nil

    public init() {}

    public static var hideShowBarDuration: CGFloat = .init()

    public func setNavigationBarHidden(_ hidden: Bool, animated: Bool) {
        log.append(.setNavigationBarHidden(hidden, animated: animated))
    }

    public func setToolbarHidden(_ hidden: Bool, animated: Bool) {
        log.append(.setToolbarHidden(hidden, animated: animated))
    }

    public func loadView() {
        log.append(.loadView)
    }

    public func viewDidLoad() {
        log.append(.viewDidLoad)
    }

    public func loadViewIfNeeded() {
        log.append(.loadViewIfNeeded)
    }

    public func viewWillAppear(_ animated: Bool) {
        log.append(.viewWillAppear(animated))
    }

    public func viewIsAppearing(_ animated: Bool) {
        log.append(.viewIsAppearing(animated))
    }

    public func viewDidAppear(_ animated: Bool) {
        log.append(.viewDidAppear(animated))
    }

    public func viewWillDisappear(_ animated: Bool) {
        log.append(.viewWillDisappear(animated))
    }

    public func viewDidDisappear(_ animated: Bool) {
        log.append(.viewDidDisappear(animated))
    }

    public func viewSafeAreaInsetsDidChange() {
        log.append(.viewSafeAreaInsetsDidChange)
    }

    public func viewWillLayoutSubviews() {
        log.append(.viewWillLayoutSubviews)
    }

    public func viewDidLayoutSubviews() {
        log.append(.viewDidLayoutSubviews)
    }

    public func updateViewConstraints() {
        log.append(.updateViewConstraints)
    }

    public func dismiss(animated: Bool) {
        log.append(.dismiss(animated: animated))
    }

    public func setViewControllers(_ viewControllers: [ViewController], animated: Bool) {
        log.append(.setViewControllers(animated: animated))
    }

    public func pushViewController(_ viewController: ViewController, animated: Bool) {
        log.append(.pushViewController(animated: animated))
    }

    public func popTopViewController(animated: Bool) -> ViewController? {
        log.append(.popTopViewController(animated: animated))
        return nil
    }

    public func popToTheRootViewController(animated: Bool) -> [ViewController]? {
        log.append(.popToTheRootViewController(animated: animated))
        return nil
    }

    public func popToViewController(_ viewController: ViewController, animated: Bool) -> [ViewController]? {
        log.append(.popToViewController(animated: animated))

        return nil
    }

    public func present(_ viewControllerToPresent: ViewController, animated flag: Bool, completion: (() -> Void)?) {
        log.append(.present(animated: flag))
    }
}

// Generated using Sourcery 2.2.3 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

import Compass
import UIKit






















public class CoordinatorMock: Coordinator {

    public init() {}

    public var childCoordinators: [Coordinator] = []
    public var navigator: Navigator {
        get { return underlyingNavigator }
        set(value) { underlyingNavigator = value }
    }
    public var underlyingNavigator: (Navigator)!
    public var baseViewController: ViewController?
    public var parentCoordinator: Coordinator?


    //MARK: - finish

    public var finishAnimatedBoolVoidCallsCount = 0
    public var finishAnimatedBoolVoidCalled: Bool {
        return finishAnimatedBoolVoidCallsCount > 0
    }
    public var finishAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var finishAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var finishAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func finish(animated: Bool) {
        finishAnimatedBoolVoidCallsCount += 1
        finishAnimatedBoolVoidReceivedAnimated = animated
        finishAnimatedBoolVoidReceivedInvocations.append(animated)
        finishAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - start

    public var startTransitionTransitionOnDismissedVoidVoidCallsCount = 0
    public var startTransitionTransitionOnDismissedVoidVoidCalled: Bool {
        return startTransitionTransitionOnDismissedVoidVoidCallsCount > 0
    }
    public var startTransitionTransitionOnDismissedVoidVoidClosure: ((Transition, (() -> Void)?) -> Void)?

    public func start(transition: Transition, onDismissed: (() -> Void)?) {
        startTransitionTransitionOnDismissedVoidVoidCallsCount += 1
        startTransitionTransitionOnDismissedVoidVoidClosure?(transition, onDismissed)
    }

    //MARK: - startChild

    public var startChildChildCoordinatorTransitionTransitionOnDismissedVoidVoidCallsCount = 0
    public var startChildChildCoordinatorTransitionTransitionOnDismissedVoidVoidCalled: Bool {
        return startChildChildCoordinatorTransitionTransitionOnDismissedVoidVoidCallsCount > 0
    }
    public var startChildChildCoordinatorTransitionTransitionOnDismissedVoidVoidClosure: ((Coordinator, Transition, (() -> Void)?) -> Void)?

    public func startChild(_ child: Coordinator, transition: Transition, onDismissed: (() -> Void)?) {
        startChildChildCoordinatorTransitionTransitionOnDismissedVoidVoidCallsCount += 1
        startChildChildCoordinatorTransitionTransitionOnDismissedVoidVoidClosure?(child, transition, onDismissed)
    }


}
public class DismissableMock: Dismissable {

    public init() {}

    public var onDismissed: ((() -> Void)?)



}
public class NavigationControllerMock: NavigationController {

    public init() {}

    public var delegate: UINavigationControllerDelegate?
    public var topMostViewController: ViewController?
    public var currentlyVisibleViewController: ViewController?
    public var viewControllersStack: [ViewController] = []
    public var interactivePopGestureRecognizer: UIGestureRecognizer?
    public var navigationBar: UINavigationBar {
        get { return underlyingNavigationBar }
        set(value) { underlyingNavigationBar = value }
    }
    public var underlyingNavigationBar: (UINavigationBar)!
    public var toolbar: UIToolbar!
    public var isToolbarHidden: Bool {
        get { return underlyingIsToolbarHidden }
        set(value) { underlyingIsToolbarHidden = value }
    }
    public var underlyingIsToolbarHidden: (Bool)!
    public var hidesBarsOnTap: Bool {
        get { return underlyingHidesBarsOnTap }
        set(value) { underlyingHidesBarsOnTap = value }
    }
    public var underlyingHidesBarsOnTap: (Bool)!
    public var hidesBarsOnSwipe: Bool {
        get { return underlyingHidesBarsOnSwipe }
        set(value) { underlyingHidesBarsOnSwipe = value }
    }
    public var underlyingHidesBarsOnSwipe: (Bool)!
    public var hidesBarsWhenVerticallyCompact: Bool {
        get { return underlyingHidesBarsWhenVerticallyCompact }
        set(value) { underlyingHidesBarsWhenVerticallyCompact = value }
    }
    public var underlyingHidesBarsWhenVerticallyCompact: (Bool)!
    public var hidesBarsWhenKeyboardAppears: Bool {
        get { return underlyingHidesBarsWhenKeyboardAppears }
        set(value) { underlyingHidesBarsWhenKeyboardAppears = value }
    }
    public var underlyingHidesBarsWhenKeyboardAppears: (Bool)!
    public var isNavigationBarHidden: Bool {
        get { return underlyingIsNavigationBarHidden }
        set(value) { underlyingIsNavigationBarHidden = value }
    }
    public var underlyingIsNavigationBarHidden: (Bool)!
    public var barHideOnTapGestureRecognizer: UITapGestureRecognizer {
        get { return underlyingBarHideOnTapGestureRecognizer }
        set(value) { underlyingBarHideOnTapGestureRecognizer = value }
    }
    public var underlyingBarHideOnTapGestureRecognizer: (UITapGestureRecognizer)!
    public var barHideOnSwipeGestureRecognizer: UIPanGestureRecognizer {
        get { return underlyingBarHideOnSwipeGestureRecognizer }
        set(value) { underlyingBarHideOnSwipeGestureRecognizer = value }
    }
    public var underlyingBarHideOnSwipeGestureRecognizer: (UIPanGestureRecognizer)!
    public var hideShowBarDuration: CGFloat {
        get { return underlyingHideShowBarDuration }
        set(value) { underlyingHideShowBarDuration = value }
    }
    public var underlyingHideShowBarDuration: (CGFloat)!
    public var onDismissed: ((() -> Void)?)
    public var title: String?
    public var isBeingDismissed: Bool {
        get { return underlyingIsBeingDismissed }
        set(value) { underlyingIsBeingDismissed = value }
    }
    public var underlyingIsBeingDismissed: (Bool)!
    public var isBeingPresented: Bool {
        get { return underlyingIsBeingPresented }
        set(value) { underlyingIsBeingPresented = value }
    }
    public var underlyingIsBeingPresented: (Bool)!
    public var isMovingFromParent: Bool {
        get { return underlyingIsMovingFromParent }
        set(value) { underlyingIsMovingFromParent = value }
    }
    public var underlyingIsMovingFromParent: (Bool)!
    public var isMovingToParent: Bool {
        get { return underlyingIsMovingToParent }
        set(value) { underlyingIsMovingToParent = value }
    }
    public var underlyingIsMovingToParent: (Bool)!
    public var modalPresentationStyle: UIModalPresentationStyle {
        get { return underlyingModalPresentationStyle }
        set(value) { underlyingModalPresentationStyle = value }
    }
    public var underlyingModalPresentationStyle: (UIModalPresentationStyle)!
    public var modalTransitionStyle: UIModalTransitionStyle {
        get { return underlyingModalTransitionStyle }
        set(value) { underlyingModalTransitionStyle = value }
    }
    public var underlyingModalTransitionStyle: (UIModalTransitionStyle)!
    public var isModalInPresentation: Bool {
        get { return underlyingIsModalInPresentation }
        set(value) { underlyingIsModalInPresentation = value }
    }
    public var underlyingIsModalInPresentation: (Bool)!
    public var definesPresentationContext: Bool {
        get { return underlyingDefinesPresentationContext }
        set(value) { underlyingDefinesPresentationContext = value }
    }
    public var underlyingDefinesPresentationContext: (Bool)!
    public var providesPresentationContextTransitionStyle: Bool {
        get { return underlyingProvidesPresentationContextTransitionStyle }
        set(value) { underlyingProvidesPresentationContextTransitionStyle = value }
    }
    public var underlyingProvidesPresentationContextTransitionStyle: (Bool)!
    public var disablesAutomaticKeyboardDismissal: Bool {
        get { return underlyingDisablesAutomaticKeyboardDismissal }
        set(value) { underlyingDisablesAutomaticKeyboardDismissal = value }
    }
    public var underlyingDisablesAutomaticKeyboardDismissal: (Bool)!
    public var overrideUserInterfaceStyle: UIUserInterfaceStyle {
        get { return underlyingOverrideUserInterfaceStyle }
        set(value) { underlyingOverrideUserInterfaceStyle = value }
    }
    public var underlyingOverrideUserInterfaceStyle: (UIUserInterfaceStyle)!
    public var presentingViewController: ViewController?
    public var presentedViewController: ViewController?
    public var presentationController: UIPresentationController?
    public var sheetPresentationController: UISheetPresentationController?
    public var activePresentationController: UIPresentationController?
    public var navigationController: NavigationController?
    public var tabBarController: UITabBarController?
    public var hidesBottomBarWhenPushed: Bool {
        get { return underlyingHidesBottomBarWhenPushed }
        set(value) { underlyingHidesBottomBarWhenPushed = value }
    }
    public var underlyingHidesBottomBarWhenPushed: (Bool)!


    //MARK: - setViewControllers

    public var setViewControllersViewControllersViewControllerAnimatedBoolVoidCallsCount = 0
    public var setViewControllersViewControllersViewControllerAnimatedBoolVoidCalled: Bool {
        return setViewControllersViewControllersViewControllerAnimatedBoolVoidCallsCount > 0
    }
    public var setViewControllersViewControllersViewControllerAnimatedBoolVoidReceivedArguments: (viewControllers: [ViewController], animated: Bool)?
    public var setViewControllersViewControllersViewControllerAnimatedBoolVoidReceivedInvocations: [(viewControllers: [ViewController], animated: Bool)] = []
    public var setViewControllersViewControllersViewControllerAnimatedBoolVoidClosure: (([ViewController], Bool) -> Void)?

    public func setViewControllers(_ viewControllers: [ViewController], animated: Bool) {
        setViewControllersViewControllersViewControllerAnimatedBoolVoidCallsCount += 1
        setViewControllersViewControllersViewControllerAnimatedBoolVoidReceivedArguments = (viewControllers: viewControllers, animated: animated)
        setViewControllersViewControllersViewControllerAnimatedBoolVoidReceivedInvocations.append((viewControllers: viewControllers, animated: animated))
        setViewControllersViewControllersViewControllerAnimatedBoolVoidClosure?(viewControllers, animated)
    }

    //MARK: - pushViewController

    public var pushViewControllerViewControllerViewControllerAnimatedBoolVoidCallsCount = 0
    public var pushViewControllerViewControllerViewControllerAnimatedBoolVoidCalled: Bool {
        return pushViewControllerViewControllerViewControllerAnimatedBoolVoidCallsCount > 0
    }
    public var pushViewControllerViewControllerViewControllerAnimatedBoolVoidReceivedArguments: (viewController: ViewController, animated: Bool)?
    public var pushViewControllerViewControllerViewControllerAnimatedBoolVoidReceivedInvocations: [(viewController: ViewController, animated: Bool)] = []
    public var pushViewControllerViewControllerViewControllerAnimatedBoolVoidClosure: ((ViewController, Bool) -> Void)?

    public func pushViewController(_ viewController: ViewController, animated: Bool) {
        pushViewControllerViewControllerViewControllerAnimatedBoolVoidCallsCount += 1
        pushViewControllerViewControllerViewControllerAnimatedBoolVoidReceivedArguments = (viewController: viewController, animated: animated)
        pushViewControllerViewControllerViewControllerAnimatedBoolVoidReceivedInvocations.append((viewController: viewController, animated: animated))
        pushViewControllerViewControllerViewControllerAnimatedBoolVoidClosure?(viewController, animated)
    }

    //MARK: - popTopViewController

    public var popTopViewControllerAnimatedBoolViewControllerCallsCount = 0
    public var popTopViewControllerAnimatedBoolViewControllerCalled: Bool {
        return popTopViewControllerAnimatedBoolViewControllerCallsCount > 0
    }
    public var popTopViewControllerAnimatedBoolViewControllerReceivedAnimated: (Bool)?
    public var popTopViewControllerAnimatedBoolViewControllerReceivedInvocations: [(Bool)] = []
    public var popTopViewControllerAnimatedBoolViewControllerReturnValue: ViewController?
    public var popTopViewControllerAnimatedBoolViewControllerClosure: ((Bool) -> ViewController?)?

    @discardableResult
    public func popTopViewController(animated: Bool) -> ViewController? {
        popTopViewControllerAnimatedBoolViewControllerCallsCount += 1
        popTopViewControllerAnimatedBoolViewControllerReceivedAnimated = animated
        popTopViewControllerAnimatedBoolViewControllerReceivedInvocations.append(animated)
        if let popTopViewControllerAnimatedBoolViewControllerClosure = popTopViewControllerAnimatedBoolViewControllerClosure {
            return popTopViewControllerAnimatedBoolViewControllerClosure(animated)
        } else {
            return popTopViewControllerAnimatedBoolViewControllerReturnValue
        }
    }

    //MARK: - popToTheRootViewController

    public var popToTheRootViewControllerAnimatedBoolViewControllerCallsCount = 0
    public var popToTheRootViewControllerAnimatedBoolViewControllerCalled: Bool {
        return popToTheRootViewControllerAnimatedBoolViewControllerCallsCount > 0
    }
    public var popToTheRootViewControllerAnimatedBoolViewControllerReceivedAnimated: (Bool)?
    public var popToTheRootViewControllerAnimatedBoolViewControllerReceivedInvocations: [(Bool)] = []
    public var popToTheRootViewControllerAnimatedBoolViewControllerReturnValue: [ViewController]?
    public var popToTheRootViewControllerAnimatedBoolViewControllerClosure: ((Bool) -> [ViewController]?)?

    @discardableResult
    public func popToTheRootViewController(animated: Bool) -> [ViewController]? {
        popToTheRootViewControllerAnimatedBoolViewControllerCallsCount += 1
        popToTheRootViewControllerAnimatedBoolViewControllerReceivedAnimated = animated
        popToTheRootViewControllerAnimatedBoolViewControllerReceivedInvocations.append(animated)
        if let popToTheRootViewControllerAnimatedBoolViewControllerClosure = popToTheRootViewControllerAnimatedBoolViewControllerClosure {
            return popToTheRootViewControllerAnimatedBoolViewControllerClosure(animated)
        } else {
            return popToTheRootViewControllerAnimatedBoolViewControllerReturnValue
        }
    }

    //MARK: - popToViewController

    public var popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerCallsCount = 0
    public var popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerCalled: Bool {
        return popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerCallsCount > 0
    }
    public var popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerReceivedArguments: (viewController: ViewController, animated: Bool)?
    public var popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerReceivedInvocations: [(viewController: ViewController, animated: Bool)] = []
    public var popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerReturnValue: [ViewController]?
    public var popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerClosure: ((ViewController, Bool) -> [ViewController]?)?

    @discardableResult
    public func popToViewController(_ viewController: ViewController, animated: Bool) -> [ViewController]? {
        popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerCallsCount += 1
        popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerReceivedArguments = (viewController: viewController, animated: animated)
        popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerReceivedInvocations.append((viewController: viewController, animated: animated))
        if let popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerClosure = popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerClosure {
            return popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerClosure(viewController, animated)
        } else {
            return popToViewControllerViewControllerViewControllerAnimatedBoolViewControllerReturnValue
        }
    }

    //MARK: - setNavigationBarHidden

    public var setNavigationBarHiddenHiddenBoolAnimatedBoolVoidCallsCount = 0
    public var setNavigationBarHiddenHiddenBoolAnimatedBoolVoidCalled: Bool {
        return setNavigationBarHiddenHiddenBoolAnimatedBoolVoidCallsCount > 0
    }
    public var setNavigationBarHiddenHiddenBoolAnimatedBoolVoidReceivedArguments: (hidden: Bool, animated: Bool)?
    public var setNavigationBarHiddenHiddenBoolAnimatedBoolVoidReceivedInvocations: [(hidden: Bool, animated: Bool)] = []
    public var setNavigationBarHiddenHiddenBoolAnimatedBoolVoidClosure: ((Bool, Bool) -> Void)?

    public func setNavigationBarHidden(_ hidden: Bool, animated: Bool) {
        setNavigationBarHiddenHiddenBoolAnimatedBoolVoidCallsCount += 1
        setNavigationBarHiddenHiddenBoolAnimatedBoolVoidReceivedArguments = (hidden: hidden, animated: animated)
        setNavigationBarHiddenHiddenBoolAnimatedBoolVoidReceivedInvocations.append((hidden: hidden, animated: animated))
        setNavigationBarHiddenHiddenBoolAnimatedBoolVoidClosure?(hidden, animated)
    }

    //MARK: - setToolbarHidden

    public var setToolbarHiddenHiddenBoolAnimatedBoolVoidCallsCount = 0
    public var setToolbarHiddenHiddenBoolAnimatedBoolVoidCalled: Bool {
        return setToolbarHiddenHiddenBoolAnimatedBoolVoidCallsCount > 0
    }
    public var setToolbarHiddenHiddenBoolAnimatedBoolVoidReceivedArguments: (hidden: Bool, animated: Bool)?
    public var setToolbarHiddenHiddenBoolAnimatedBoolVoidReceivedInvocations: [(hidden: Bool, animated: Bool)] = []
    public var setToolbarHiddenHiddenBoolAnimatedBoolVoidClosure: ((Bool, Bool) -> Void)?

    public func setToolbarHidden(_ hidden: Bool, animated: Bool) {
        setToolbarHiddenHiddenBoolAnimatedBoolVoidCallsCount += 1
        setToolbarHiddenHiddenBoolAnimatedBoolVoidReceivedArguments = (hidden: hidden, animated: animated)
        setToolbarHiddenHiddenBoolAnimatedBoolVoidReceivedInvocations.append((hidden: hidden, animated: animated))
        setToolbarHiddenHiddenBoolAnimatedBoolVoidClosure?(hidden, animated)
    }

    //MARK: - show

    public var showVcViewControllerSenderAnyVoidCallsCount = 0
    public var showVcViewControllerSenderAnyVoidCalled: Bool {
        return showVcViewControllerSenderAnyVoidCallsCount > 0
    }
    public var showVcViewControllerSenderAnyVoidReceivedArguments: (vc: ViewController, sender: Any?)?
    public var showVcViewControllerSenderAnyVoidReceivedInvocations: [(vc: ViewController, sender: Any?)] = []
    public var showVcViewControllerSenderAnyVoidClosure: ((ViewController, Any?) -> Void)?

    public func show(_ vc: ViewController, sender: Any?) {
        showVcViewControllerSenderAnyVoidCallsCount += 1
        showVcViewControllerSenderAnyVoidReceivedArguments = (vc: vc, sender: sender)
        showVcViewControllerSenderAnyVoidReceivedInvocations.append((vc: vc, sender: sender))
        showVcViewControllerSenderAnyVoidClosure?(vc, sender)
    }

    //MARK: - loadView

    public var loadViewVoidCallsCount = 0
    public var loadViewVoidCalled: Bool {
        return loadViewVoidCallsCount > 0
    }
    public var loadViewVoidClosure: (() -> Void)?

    public func loadView() {
        loadViewVoidCallsCount += 1
        loadViewVoidClosure?()
    }

    //MARK: - viewDidLoad

    public var viewDidLoadVoidCallsCount = 0
    public var viewDidLoadVoidCalled: Bool {
        return viewDidLoadVoidCallsCount > 0
    }
    public var viewDidLoadVoidClosure: (() -> Void)?

    public func viewDidLoad() {
        viewDidLoadVoidCallsCount += 1
        viewDidLoadVoidClosure?()
    }

    //MARK: - loadViewIfNeeded

    public var loadViewIfNeededVoidCallsCount = 0
    public var loadViewIfNeededVoidCalled: Bool {
        return loadViewIfNeededVoidCallsCount > 0
    }
    public var loadViewIfNeededVoidClosure: (() -> Void)?

    public func loadViewIfNeeded() {
        loadViewIfNeededVoidCallsCount += 1
        loadViewIfNeededVoidClosure?()
    }

    //MARK: - viewWillAppear

    public var viewWillAppearAnimatedBoolVoidCallsCount = 0
    public var viewWillAppearAnimatedBoolVoidCalled: Bool {
        return viewWillAppearAnimatedBoolVoidCallsCount > 0
    }
    public var viewWillAppearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewWillAppearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewWillAppearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewWillAppear(_ animated: Bool) {
        viewWillAppearAnimatedBoolVoidCallsCount += 1
        viewWillAppearAnimatedBoolVoidReceivedAnimated = animated
        viewWillAppearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewWillAppearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewIsAppearing

    public var viewIsAppearingAnimatedBoolVoidCallsCount = 0
    public var viewIsAppearingAnimatedBoolVoidCalled: Bool {
        return viewIsAppearingAnimatedBoolVoidCallsCount > 0
    }
    public var viewIsAppearingAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewIsAppearingAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewIsAppearingAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewIsAppearing(_ animated: Bool) {
        viewIsAppearingAnimatedBoolVoidCallsCount += 1
        viewIsAppearingAnimatedBoolVoidReceivedAnimated = animated
        viewIsAppearingAnimatedBoolVoidReceivedInvocations.append(animated)
        viewIsAppearingAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewDidAppear

    public var viewDidAppearAnimatedBoolVoidCallsCount = 0
    public var viewDidAppearAnimatedBoolVoidCalled: Bool {
        return viewDidAppearAnimatedBoolVoidCallsCount > 0
    }
    public var viewDidAppearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewDidAppearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewDidAppearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewDidAppear(_ animated: Bool) {
        viewDidAppearAnimatedBoolVoidCallsCount += 1
        viewDidAppearAnimatedBoolVoidReceivedAnimated = animated
        viewDidAppearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewDidAppearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewWillDisappear

    public var viewWillDisappearAnimatedBoolVoidCallsCount = 0
    public var viewWillDisappearAnimatedBoolVoidCalled: Bool {
        return viewWillDisappearAnimatedBoolVoidCallsCount > 0
    }
    public var viewWillDisappearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewWillDisappearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewWillDisappearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewWillDisappear(_ animated: Bool) {
        viewWillDisappearAnimatedBoolVoidCallsCount += 1
        viewWillDisappearAnimatedBoolVoidReceivedAnimated = animated
        viewWillDisappearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewWillDisappearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewDidDisappear

    public var viewDidDisappearAnimatedBoolVoidCallsCount = 0
    public var viewDidDisappearAnimatedBoolVoidCalled: Bool {
        return viewDidDisappearAnimatedBoolVoidCallsCount > 0
    }
    public var viewDidDisappearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewDidDisappearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewDidDisappearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewDidDisappear(_ animated: Bool) {
        viewDidDisappearAnimatedBoolVoidCallsCount += 1
        viewDidDisappearAnimatedBoolVoidReceivedAnimated = animated
        viewDidDisappearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewDidDisappearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewSafeAreaInsetsDidChange

    public var viewSafeAreaInsetsDidChangeVoidCallsCount = 0
    public var viewSafeAreaInsetsDidChangeVoidCalled: Bool {
        return viewSafeAreaInsetsDidChangeVoidCallsCount > 0
    }
    public var viewSafeAreaInsetsDidChangeVoidClosure: (() -> Void)?

    public func viewSafeAreaInsetsDidChange() {
        viewSafeAreaInsetsDidChangeVoidCallsCount += 1
        viewSafeAreaInsetsDidChangeVoidClosure?()
    }

    //MARK: - viewWillLayoutSubviews

    public var viewWillLayoutSubviewsVoidCallsCount = 0
    public var viewWillLayoutSubviewsVoidCalled: Bool {
        return viewWillLayoutSubviewsVoidCallsCount > 0
    }
    public var viewWillLayoutSubviewsVoidClosure: (() -> Void)?

    public func viewWillLayoutSubviews() {
        viewWillLayoutSubviewsVoidCallsCount += 1
        viewWillLayoutSubviewsVoidClosure?()
    }

    //MARK: - viewDidLayoutSubviews

    public var viewDidLayoutSubviewsVoidCallsCount = 0
    public var viewDidLayoutSubviewsVoidCalled: Bool {
        return viewDidLayoutSubviewsVoidCallsCount > 0
    }
    public var viewDidLayoutSubviewsVoidClosure: (() -> Void)?

    public func viewDidLayoutSubviews() {
        viewDidLayoutSubviewsVoidCallsCount += 1
        viewDidLayoutSubviewsVoidClosure?()
    }

    //MARK: - updateViewConstraints

    public var updateViewConstraintsVoidCallsCount = 0
    public var updateViewConstraintsVoidCalled: Bool {
        return updateViewConstraintsVoidCallsCount > 0
    }
    public var updateViewConstraintsVoidClosure: (() -> Void)?

    public func updateViewConstraints() {
        updateViewConstraintsVoidCallsCount += 1
        updateViewConstraintsVoidClosure?()
    }

    //MARK: - showDetailViewController

    public var showDetailViewControllerVcViewControllerSenderAnyVoidCallsCount = 0
    public var showDetailViewControllerVcViewControllerSenderAnyVoidCalled: Bool {
        return showDetailViewControllerVcViewControllerSenderAnyVoidCallsCount > 0
    }
    public var showDetailViewControllerVcViewControllerSenderAnyVoidReceivedArguments: (vc: ViewController, sender: Any?)?
    public var showDetailViewControllerVcViewControllerSenderAnyVoidReceivedInvocations: [(vc: ViewController, sender: Any?)] = []
    public var showDetailViewControllerVcViewControllerSenderAnyVoidClosure: ((ViewController, Any?) -> Void)?

    public func showDetailViewController(_ vc: ViewController, sender: Any?) {
        showDetailViewControllerVcViewControllerSenderAnyVoidCallsCount += 1
        showDetailViewControllerVcViewControllerSenderAnyVoidReceivedArguments = (vc: vc, sender: sender)
        showDetailViewControllerVcViewControllerSenderAnyVoidReceivedInvocations.append((vc: vc, sender: sender))
        showDetailViewControllerVcViewControllerSenderAnyVoidClosure?(vc, sender)
    }

    //MARK: - present

    public var presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCallsCount = 0
    public var presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCalled: Bool {
        return presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCallsCount > 0
    }
    public var presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidClosure: ((ViewController, Bool, (() -> Void)?) -> Void)?

    public func present(_ viewControllerToPresent: ViewController, animated flag: Bool, completion: (() -> Void)?) {
        presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCallsCount += 1
        presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidClosure?(viewControllerToPresent, flag, completion)
    }

    //MARK: - dismiss

    public var dismissAnimatedFlagBoolVoidCallsCount = 0
    public var dismissAnimatedFlagBoolVoidCalled: Bool {
        return dismissAnimatedFlagBoolVoidCallsCount > 0
    }
    public var dismissAnimatedFlagBoolVoidReceivedFlag: (Bool)?
    public var dismissAnimatedFlagBoolVoidReceivedInvocations: [(Bool)] = []
    public var dismissAnimatedFlagBoolVoidClosure: ((Bool) -> Void)?

    public func dismiss(animated flag: Bool) {
        dismissAnimatedFlagBoolVoidCallsCount += 1
        dismissAnimatedFlagBoolVoidReceivedFlag = flag
        dismissAnimatedFlagBoolVoidReceivedInvocations.append(flag)
        dismissAnimatedFlagBoolVoidClosure?(flag)
    }


}
public class NavigatorMock: Navigator {

    public init() {}



    //MARK: - navigate

    public var navigateToViewControllerViewControllerTransitionTransitionVoidCallsCount = 0
    public var navigateToViewControllerViewControllerTransitionTransitionVoidCalled: Bool {
        return navigateToViewControllerViewControllerTransitionTransitionVoidCallsCount > 0
    }
    public var navigateToViewControllerViewControllerTransitionTransitionVoidReceivedArguments: (viewController: ViewController, transition: Transition)?
    public var navigateToViewControllerViewControllerTransitionTransitionVoidReceivedInvocations: [(viewController: ViewController, transition: Transition)] = []
    public var navigateToViewControllerViewControllerTransitionTransitionVoidClosure: ((ViewController, Transition) -> Void)?

    public func navigate(to viewController: ViewController, transition: Transition) {
        navigateToViewControllerViewControllerTransitionTransitionVoidCallsCount += 1
        navigateToViewControllerViewControllerTransitionTransitionVoidReceivedArguments = (viewController: viewController, transition: transition)
        navigateToViewControllerViewControllerTransitionTransitionVoidReceivedInvocations.append((viewController: viewController, transition: transition))
        navigateToViewControllerViewControllerTransitionTransitionVoidClosure?(viewController, transition)
    }

    //MARK: - exitFlow

    public var exitFlowCoordinatorCoordinatorAnimatedBoolVoidCallsCount = 0
    public var exitFlowCoordinatorCoordinatorAnimatedBoolVoidCalled: Bool {
        return exitFlowCoordinatorCoordinatorAnimatedBoolVoidCallsCount > 0
    }
    public var exitFlowCoordinatorCoordinatorAnimatedBoolVoidReceivedArguments: (coordinator: Coordinator, animated: Bool)?
    public var exitFlowCoordinatorCoordinatorAnimatedBoolVoidReceivedInvocations: [(coordinator: Coordinator, animated: Bool)] = []
    public var exitFlowCoordinatorCoordinatorAnimatedBoolVoidClosure: ((Coordinator, Bool) -> Void)?

    public func exitFlow(coordinator: Coordinator, animated: Bool) {
        exitFlowCoordinatorCoordinatorAnimatedBoolVoidCallsCount += 1
        exitFlowCoordinatorCoordinatorAnimatedBoolVoidReceivedArguments = (coordinator: coordinator, animated: animated)
        exitFlowCoordinatorCoordinatorAnimatedBoolVoidReceivedInvocations.append((coordinator: coordinator, animated: animated))
        exitFlowCoordinatorCoordinatorAnimatedBoolVoidClosure?(coordinator, animated)
    }

    //MARK: - dismiss

    public var dismissAnimatedBoolVoidCallsCount = 0
    public var dismissAnimatedBoolVoidCalled: Bool {
        return dismissAnimatedBoolVoidCallsCount > 0
    }
    public var dismissAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var dismissAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var dismissAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func dismiss(animated: Bool) {
        dismissAnimatedBoolVoidCallsCount += 1
        dismissAnimatedBoolVoidReceivedAnimated = animated
        dismissAnimatedBoolVoidReceivedInvocations.append(animated)
        dismissAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - popViewController

    public var popViewControllerAnimatedBoolVoidCallsCount = 0
    public var popViewControllerAnimatedBoolVoidCalled: Bool {
        return popViewControllerAnimatedBoolVoidCallsCount > 0
    }
    public var popViewControllerAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var popViewControllerAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var popViewControllerAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func popViewController(animated: Bool) {
        popViewControllerAnimatedBoolVoidCallsCount += 1
        popViewControllerAnimatedBoolVoidReceivedAnimated = animated
        popViewControllerAnimatedBoolVoidReceivedInvocations.append(animated)
        popViewControllerAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - popToViewController

    public var popToViewControllerViewControllerViewControllerAnimatedBoolVoidCallsCount = 0
    public var popToViewControllerViewControllerViewControllerAnimatedBoolVoidCalled: Bool {
        return popToViewControllerViewControllerViewControllerAnimatedBoolVoidCallsCount > 0
    }
    public var popToViewControllerViewControllerViewControllerAnimatedBoolVoidReceivedArguments: (viewController: ViewController, animated: Bool)?
    public var popToViewControllerViewControllerViewControllerAnimatedBoolVoidReceivedInvocations: [(viewController: ViewController, animated: Bool)] = []
    public var popToViewControllerViewControllerViewControllerAnimatedBoolVoidClosure: ((ViewController, Bool) -> Void)?

    public func popToViewController(_ viewController: ViewController, animated: Bool) {
        popToViewControllerViewControllerViewControllerAnimatedBoolVoidCallsCount += 1
        popToViewControllerViewControllerViewControllerAnimatedBoolVoidReceivedArguments = (viewController: viewController, animated: animated)
        popToViewControllerViewControllerViewControllerAnimatedBoolVoidReceivedInvocations.append((viewController: viewController, animated: animated))
        popToViewControllerViewControllerViewControllerAnimatedBoolVoidClosure?(viewController, animated)
    }

    //MARK: - popToRootViewController

    public var popToRootViewControllerAnimatedBoolVoidCallsCount = 0
    public var popToRootViewControllerAnimatedBoolVoidCalled: Bool {
        return popToRootViewControllerAnimatedBoolVoidCallsCount > 0
    }
    public var popToRootViewControllerAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var popToRootViewControllerAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var popToRootViewControllerAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func popToRootViewController(animated: Bool) {
        popToRootViewControllerAnimatedBoolVoidCallsCount += 1
        popToRootViewControllerAnimatedBoolVoidReceivedAnimated = animated
        popToRootViewControllerAnimatedBoolVoidReceivedInvocations.append(animated)
        popToRootViewControllerAnimatedBoolVoidClosure?(animated)
    }


}
public class TabBarControllerMock: TabBarController {

    public init() {}

    public var delegate: UITabBarControllerDelegate?
    public var tabBar: UITabBar {
        get { return underlyingTabBar }
        set(value) { underlyingTabBar = value }
    }
    public var underlyingTabBar: (UITabBar)!
    public var viewControllers: [ViewController]?
    public var customizableViewControllers: [ViewController]?
    public var moreNavigationController: NavigationController {
        get { return underlyingMoreNavigationController }
        set(value) { underlyingMoreNavigationController = value }
    }
    public var underlyingMoreNavigationController: (NavigationController)!
    public var selectedViewController: UIViewController?
    public var selectedIndex: Int {
        get { return underlyingSelectedIndex }
        set(value) { underlyingSelectedIndex = value }
    }
    public var underlyingSelectedIndex: (Int)!
    public var onDismissed: ((() -> Void)?)
    public var title: String?
    public var isBeingDismissed: Bool {
        get { return underlyingIsBeingDismissed }
        set(value) { underlyingIsBeingDismissed = value }
    }
    public var underlyingIsBeingDismissed: (Bool)!
    public var isBeingPresented: Bool {
        get { return underlyingIsBeingPresented }
        set(value) { underlyingIsBeingPresented = value }
    }
    public var underlyingIsBeingPresented: (Bool)!
    public var isMovingFromParent: Bool {
        get { return underlyingIsMovingFromParent }
        set(value) { underlyingIsMovingFromParent = value }
    }
    public var underlyingIsMovingFromParent: (Bool)!
    public var isMovingToParent: Bool {
        get { return underlyingIsMovingToParent }
        set(value) { underlyingIsMovingToParent = value }
    }
    public var underlyingIsMovingToParent: (Bool)!
    public var modalPresentationStyle: UIModalPresentationStyle {
        get { return underlyingModalPresentationStyle }
        set(value) { underlyingModalPresentationStyle = value }
    }
    public var underlyingModalPresentationStyle: (UIModalPresentationStyle)!
    public var modalTransitionStyle: UIModalTransitionStyle {
        get { return underlyingModalTransitionStyle }
        set(value) { underlyingModalTransitionStyle = value }
    }
    public var underlyingModalTransitionStyle: (UIModalTransitionStyle)!
    public var isModalInPresentation: Bool {
        get { return underlyingIsModalInPresentation }
        set(value) { underlyingIsModalInPresentation = value }
    }
    public var underlyingIsModalInPresentation: (Bool)!
    public var definesPresentationContext: Bool {
        get { return underlyingDefinesPresentationContext }
        set(value) { underlyingDefinesPresentationContext = value }
    }
    public var underlyingDefinesPresentationContext: (Bool)!
    public var providesPresentationContextTransitionStyle: Bool {
        get { return underlyingProvidesPresentationContextTransitionStyle }
        set(value) { underlyingProvidesPresentationContextTransitionStyle = value }
    }
    public var underlyingProvidesPresentationContextTransitionStyle: (Bool)!
    public var disablesAutomaticKeyboardDismissal: Bool {
        get { return underlyingDisablesAutomaticKeyboardDismissal }
        set(value) { underlyingDisablesAutomaticKeyboardDismissal = value }
    }
    public var underlyingDisablesAutomaticKeyboardDismissal: (Bool)!
    public var overrideUserInterfaceStyle: UIUserInterfaceStyle {
        get { return underlyingOverrideUserInterfaceStyle }
        set(value) { underlyingOverrideUserInterfaceStyle = value }
    }
    public var underlyingOverrideUserInterfaceStyle: (UIUserInterfaceStyle)!
    public var presentingViewController: ViewController?
    public var presentedViewController: ViewController?
    public var presentationController: UIPresentationController?
    public var sheetPresentationController: UISheetPresentationController?
    public var activePresentationController: UIPresentationController?
    public var navigationController: NavigationController?
    public var tabBarController: UITabBarController?
    public var hidesBottomBarWhenPushed: Bool {
        get { return underlyingHidesBottomBarWhenPushed }
        set(value) { underlyingHidesBottomBarWhenPushed = value }
    }
    public var underlyingHidesBottomBarWhenPushed: (Bool)!


    //MARK: - setViewControllers

    public var setViewControllersViewControllersViewControllerAnimatedBoolVoidCallsCount = 0
    public var setViewControllersViewControllersViewControllerAnimatedBoolVoidCalled: Bool {
        return setViewControllersViewControllersViewControllerAnimatedBoolVoidCallsCount > 0
    }
    public var setViewControllersViewControllersViewControllerAnimatedBoolVoidReceivedArguments: (viewControllers: [ViewController]?, animated: Bool)?
    public var setViewControllersViewControllersViewControllerAnimatedBoolVoidReceivedInvocations: [(viewControllers: [ViewController]?, animated: Bool)] = []
    public var setViewControllersViewControllersViewControllerAnimatedBoolVoidClosure: (([ViewController]?, Bool) -> Void)?

    public func setViewControllers(_ viewControllers: [ViewController]?, animated: Bool) {
        setViewControllersViewControllersViewControllerAnimatedBoolVoidCallsCount += 1
        setViewControllersViewControllersViewControllerAnimatedBoolVoidReceivedArguments = (viewControllers: viewControllers, animated: animated)
        setViewControllersViewControllersViewControllerAnimatedBoolVoidReceivedInvocations.append((viewControllers: viewControllers, animated: animated))
        setViewControllersViewControllersViewControllerAnimatedBoolVoidClosure?(viewControllers, animated)
    }

    //MARK: - loadView

    public var loadViewVoidCallsCount = 0
    public var loadViewVoidCalled: Bool {
        return loadViewVoidCallsCount > 0
    }
    public var loadViewVoidClosure: (() -> Void)?

    public func loadView() {
        loadViewVoidCallsCount += 1
        loadViewVoidClosure?()
    }

    //MARK: - viewDidLoad

    public var viewDidLoadVoidCallsCount = 0
    public var viewDidLoadVoidCalled: Bool {
        return viewDidLoadVoidCallsCount > 0
    }
    public var viewDidLoadVoidClosure: (() -> Void)?

    public func viewDidLoad() {
        viewDidLoadVoidCallsCount += 1
        viewDidLoadVoidClosure?()
    }

    //MARK: - loadViewIfNeeded

    public var loadViewIfNeededVoidCallsCount = 0
    public var loadViewIfNeededVoidCalled: Bool {
        return loadViewIfNeededVoidCallsCount > 0
    }
    public var loadViewIfNeededVoidClosure: (() -> Void)?

    public func loadViewIfNeeded() {
        loadViewIfNeededVoidCallsCount += 1
        loadViewIfNeededVoidClosure?()
    }

    //MARK: - viewWillAppear

    public var viewWillAppearAnimatedBoolVoidCallsCount = 0
    public var viewWillAppearAnimatedBoolVoidCalled: Bool {
        return viewWillAppearAnimatedBoolVoidCallsCount > 0
    }
    public var viewWillAppearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewWillAppearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewWillAppearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewWillAppear(_ animated: Bool) {
        viewWillAppearAnimatedBoolVoidCallsCount += 1
        viewWillAppearAnimatedBoolVoidReceivedAnimated = animated
        viewWillAppearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewWillAppearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewIsAppearing

    public var viewIsAppearingAnimatedBoolVoidCallsCount = 0
    public var viewIsAppearingAnimatedBoolVoidCalled: Bool {
        return viewIsAppearingAnimatedBoolVoidCallsCount > 0
    }
    public var viewIsAppearingAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewIsAppearingAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewIsAppearingAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewIsAppearing(_ animated: Bool) {
        viewIsAppearingAnimatedBoolVoidCallsCount += 1
        viewIsAppearingAnimatedBoolVoidReceivedAnimated = animated
        viewIsAppearingAnimatedBoolVoidReceivedInvocations.append(animated)
        viewIsAppearingAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewDidAppear

    public var viewDidAppearAnimatedBoolVoidCallsCount = 0
    public var viewDidAppearAnimatedBoolVoidCalled: Bool {
        return viewDidAppearAnimatedBoolVoidCallsCount > 0
    }
    public var viewDidAppearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewDidAppearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewDidAppearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewDidAppear(_ animated: Bool) {
        viewDidAppearAnimatedBoolVoidCallsCount += 1
        viewDidAppearAnimatedBoolVoidReceivedAnimated = animated
        viewDidAppearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewDidAppearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewWillDisappear

    public var viewWillDisappearAnimatedBoolVoidCallsCount = 0
    public var viewWillDisappearAnimatedBoolVoidCalled: Bool {
        return viewWillDisappearAnimatedBoolVoidCallsCount > 0
    }
    public var viewWillDisappearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewWillDisappearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewWillDisappearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewWillDisappear(_ animated: Bool) {
        viewWillDisappearAnimatedBoolVoidCallsCount += 1
        viewWillDisappearAnimatedBoolVoidReceivedAnimated = animated
        viewWillDisappearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewWillDisappearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewDidDisappear

    public var viewDidDisappearAnimatedBoolVoidCallsCount = 0
    public var viewDidDisappearAnimatedBoolVoidCalled: Bool {
        return viewDidDisappearAnimatedBoolVoidCallsCount > 0
    }
    public var viewDidDisappearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewDidDisappearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewDidDisappearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewDidDisappear(_ animated: Bool) {
        viewDidDisappearAnimatedBoolVoidCallsCount += 1
        viewDidDisappearAnimatedBoolVoidReceivedAnimated = animated
        viewDidDisappearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewDidDisappearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewSafeAreaInsetsDidChange

    public var viewSafeAreaInsetsDidChangeVoidCallsCount = 0
    public var viewSafeAreaInsetsDidChangeVoidCalled: Bool {
        return viewSafeAreaInsetsDidChangeVoidCallsCount > 0
    }
    public var viewSafeAreaInsetsDidChangeVoidClosure: (() -> Void)?

    public func viewSafeAreaInsetsDidChange() {
        viewSafeAreaInsetsDidChangeVoidCallsCount += 1
        viewSafeAreaInsetsDidChangeVoidClosure?()
    }

    //MARK: - viewWillLayoutSubviews

    public var viewWillLayoutSubviewsVoidCallsCount = 0
    public var viewWillLayoutSubviewsVoidCalled: Bool {
        return viewWillLayoutSubviewsVoidCallsCount > 0
    }
    public var viewWillLayoutSubviewsVoidClosure: (() -> Void)?

    public func viewWillLayoutSubviews() {
        viewWillLayoutSubviewsVoidCallsCount += 1
        viewWillLayoutSubviewsVoidClosure?()
    }

    //MARK: - viewDidLayoutSubviews

    public var viewDidLayoutSubviewsVoidCallsCount = 0
    public var viewDidLayoutSubviewsVoidCalled: Bool {
        return viewDidLayoutSubviewsVoidCallsCount > 0
    }
    public var viewDidLayoutSubviewsVoidClosure: (() -> Void)?

    public func viewDidLayoutSubviews() {
        viewDidLayoutSubviewsVoidCallsCount += 1
        viewDidLayoutSubviewsVoidClosure?()
    }

    //MARK: - updateViewConstraints

    public var updateViewConstraintsVoidCallsCount = 0
    public var updateViewConstraintsVoidCalled: Bool {
        return updateViewConstraintsVoidCallsCount > 0
    }
    public var updateViewConstraintsVoidClosure: (() -> Void)?

    public func updateViewConstraints() {
        updateViewConstraintsVoidCallsCount += 1
        updateViewConstraintsVoidClosure?()
    }

    //MARK: - show

    public var showVcViewControllerSenderAnyVoidCallsCount = 0
    public var showVcViewControllerSenderAnyVoidCalled: Bool {
        return showVcViewControllerSenderAnyVoidCallsCount > 0
    }
    public var showVcViewControllerSenderAnyVoidReceivedArguments: (vc: ViewController, sender: Any?)?
    public var showVcViewControllerSenderAnyVoidReceivedInvocations: [(vc: ViewController, sender: Any?)] = []
    public var showVcViewControllerSenderAnyVoidClosure: ((ViewController, Any?) -> Void)?

    public func show(_ vc: ViewController, sender: Any?) {
        showVcViewControllerSenderAnyVoidCallsCount += 1
        showVcViewControllerSenderAnyVoidReceivedArguments = (vc: vc, sender: sender)
        showVcViewControllerSenderAnyVoidReceivedInvocations.append((vc: vc, sender: sender))
        showVcViewControllerSenderAnyVoidClosure?(vc, sender)
    }

    //MARK: - showDetailViewController

    public var showDetailViewControllerVcViewControllerSenderAnyVoidCallsCount = 0
    public var showDetailViewControllerVcViewControllerSenderAnyVoidCalled: Bool {
        return showDetailViewControllerVcViewControllerSenderAnyVoidCallsCount > 0
    }
    public var showDetailViewControllerVcViewControllerSenderAnyVoidReceivedArguments: (vc: ViewController, sender: Any?)?
    public var showDetailViewControllerVcViewControllerSenderAnyVoidReceivedInvocations: [(vc: ViewController, sender: Any?)] = []
    public var showDetailViewControllerVcViewControllerSenderAnyVoidClosure: ((ViewController, Any?) -> Void)?

    public func showDetailViewController(_ vc: ViewController, sender: Any?) {
        showDetailViewControllerVcViewControllerSenderAnyVoidCallsCount += 1
        showDetailViewControllerVcViewControllerSenderAnyVoidReceivedArguments = (vc: vc, sender: sender)
        showDetailViewControllerVcViewControllerSenderAnyVoidReceivedInvocations.append((vc: vc, sender: sender))
        showDetailViewControllerVcViewControllerSenderAnyVoidClosure?(vc, sender)
    }

    //MARK: - present

    public var presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCallsCount = 0
    public var presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCalled: Bool {
        return presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCallsCount > 0
    }
    public var presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidClosure: ((ViewController, Bool, (() -> Void)?) -> Void)?

    public func present(_ viewControllerToPresent: ViewController, animated flag: Bool, completion: (() -> Void)?) {
        presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCallsCount += 1
        presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidClosure?(viewControllerToPresent, flag, completion)
    }

    //MARK: - dismiss

    public var dismissAnimatedFlagBoolVoidCallsCount = 0
    public var dismissAnimatedFlagBoolVoidCalled: Bool {
        return dismissAnimatedFlagBoolVoidCallsCount > 0
    }
    public var dismissAnimatedFlagBoolVoidReceivedFlag: (Bool)?
    public var dismissAnimatedFlagBoolVoidReceivedInvocations: [(Bool)] = []
    public var dismissAnimatedFlagBoolVoidClosure: ((Bool) -> Void)?

    public func dismiss(animated flag: Bool) {
        dismissAnimatedFlagBoolVoidCallsCount += 1
        dismissAnimatedFlagBoolVoidReceivedFlag = flag
        dismissAnimatedFlagBoolVoidReceivedInvocations.append(flag)
        dismissAnimatedFlagBoolVoidClosure?(flag)
    }


}
public class ViewControllerMock: ViewController {

    public init() {}

    public var title: String?
    public var isBeingDismissed: Bool {
        get { return underlyingIsBeingDismissed }
        set(value) { underlyingIsBeingDismissed = value }
    }
    public var underlyingIsBeingDismissed: (Bool)!
    public var isBeingPresented: Bool {
        get { return underlyingIsBeingPresented }
        set(value) { underlyingIsBeingPresented = value }
    }
    public var underlyingIsBeingPresented: (Bool)!
    public var isMovingFromParent: Bool {
        get { return underlyingIsMovingFromParent }
        set(value) { underlyingIsMovingFromParent = value }
    }
    public var underlyingIsMovingFromParent: (Bool)!
    public var isMovingToParent: Bool {
        get { return underlyingIsMovingToParent }
        set(value) { underlyingIsMovingToParent = value }
    }
    public var underlyingIsMovingToParent: (Bool)!
    public var modalPresentationStyle: UIModalPresentationStyle {
        get { return underlyingModalPresentationStyle }
        set(value) { underlyingModalPresentationStyle = value }
    }
    public var underlyingModalPresentationStyle: (UIModalPresentationStyle)!
    public var modalTransitionStyle: UIModalTransitionStyle {
        get { return underlyingModalTransitionStyle }
        set(value) { underlyingModalTransitionStyle = value }
    }
    public var underlyingModalTransitionStyle: (UIModalTransitionStyle)!
    public var isModalInPresentation: Bool {
        get { return underlyingIsModalInPresentation }
        set(value) { underlyingIsModalInPresentation = value }
    }
    public var underlyingIsModalInPresentation: (Bool)!
    public var definesPresentationContext: Bool {
        get { return underlyingDefinesPresentationContext }
        set(value) { underlyingDefinesPresentationContext = value }
    }
    public var underlyingDefinesPresentationContext: (Bool)!
    public var providesPresentationContextTransitionStyle: Bool {
        get { return underlyingProvidesPresentationContextTransitionStyle }
        set(value) { underlyingProvidesPresentationContextTransitionStyle = value }
    }
    public var underlyingProvidesPresentationContextTransitionStyle: (Bool)!
    public var disablesAutomaticKeyboardDismissal: Bool {
        get { return underlyingDisablesAutomaticKeyboardDismissal }
        set(value) { underlyingDisablesAutomaticKeyboardDismissal = value }
    }
    public var underlyingDisablesAutomaticKeyboardDismissal: (Bool)!
    public var overrideUserInterfaceStyle: UIUserInterfaceStyle {
        get { return underlyingOverrideUserInterfaceStyle }
        set(value) { underlyingOverrideUserInterfaceStyle = value }
    }
    public var underlyingOverrideUserInterfaceStyle: (UIUserInterfaceStyle)!
    public var presentingViewController: ViewController?
    public var presentedViewController: ViewController?
    public var presentationController: UIPresentationController?
    public var sheetPresentationController: UISheetPresentationController?
    public var activePresentationController: UIPresentationController?
    public var navigationController: NavigationController?
    public var tabBarController: UITabBarController?
    public var hidesBottomBarWhenPushed: Bool {
        get { return underlyingHidesBottomBarWhenPushed }
        set(value) { underlyingHidesBottomBarWhenPushed = value }
    }
    public var underlyingHidesBottomBarWhenPushed: (Bool)!
    public var onDismissed: ((() -> Void)?)


    //MARK: - loadView

    public var loadViewVoidCallsCount = 0
    public var loadViewVoidCalled: Bool {
        return loadViewVoidCallsCount > 0
    }
    public var loadViewVoidClosure: (() -> Void)?

    public func loadView() {
        loadViewVoidCallsCount += 1
        loadViewVoidClosure?()
    }

    //MARK: - viewDidLoad

    public var viewDidLoadVoidCallsCount = 0
    public var viewDidLoadVoidCalled: Bool {
        return viewDidLoadVoidCallsCount > 0
    }
    public var viewDidLoadVoidClosure: (() -> Void)?

    public func viewDidLoad() {
        viewDidLoadVoidCallsCount += 1
        viewDidLoadVoidClosure?()
    }

    //MARK: - loadViewIfNeeded

    public var loadViewIfNeededVoidCallsCount = 0
    public var loadViewIfNeededVoidCalled: Bool {
        return loadViewIfNeededVoidCallsCount > 0
    }
    public var loadViewIfNeededVoidClosure: (() -> Void)?

    public func loadViewIfNeeded() {
        loadViewIfNeededVoidCallsCount += 1
        loadViewIfNeededVoidClosure?()
    }

    //MARK: - viewWillAppear

    public var viewWillAppearAnimatedBoolVoidCallsCount = 0
    public var viewWillAppearAnimatedBoolVoidCalled: Bool {
        return viewWillAppearAnimatedBoolVoidCallsCount > 0
    }
    public var viewWillAppearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewWillAppearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewWillAppearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewWillAppear(_ animated: Bool) {
        viewWillAppearAnimatedBoolVoidCallsCount += 1
        viewWillAppearAnimatedBoolVoidReceivedAnimated = animated
        viewWillAppearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewWillAppearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewIsAppearing

    public var viewIsAppearingAnimatedBoolVoidCallsCount = 0
    public var viewIsAppearingAnimatedBoolVoidCalled: Bool {
        return viewIsAppearingAnimatedBoolVoidCallsCount > 0
    }
    public var viewIsAppearingAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewIsAppearingAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewIsAppearingAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewIsAppearing(_ animated: Bool) {
        viewIsAppearingAnimatedBoolVoidCallsCount += 1
        viewIsAppearingAnimatedBoolVoidReceivedAnimated = animated
        viewIsAppearingAnimatedBoolVoidReceivedInvocations.append(animated)
        viewIsAppearingAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewDidAppear

    public var viewDidAppearAnimatedBoolVoidCallsCount = 0
    public var viewDidAppearAnimatedBoolVoidCalled: Bool {
        return viewDidAppearAnimatedBoolVoidCallsCount > 0
    }
    public var viewDidAppearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewDidAppearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewDidAppearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewDidAppear(_ animated: Bool) {
        viewDidAppearAnimatedBoolVoidCallsCount += 1
        viewDidAppearAnimatedBoolVoidReceivedAnimated = animated
        viewDidAppearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewDidAppearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewWillDisappear

    public var viewWillDisappearAnimatedBoolVoidCallsCount = 0
    public var viewWillDisappearAnimatedBoolVoidCalled: Bool {
        return viewWillDisappearAnimatedBoolVoidCallsCount > 0
    }
    public var viewWillDisappearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewWillDisappearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewWillDisappearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewWillDisappear(_ animated: Bool) {
        viewWillDisappearAnimatedBoolVoidCallsCount += 1
        viewWillDisappearAnimatedBoolVoidReceivedAnimated = animated
        viewWillDisappearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewWillDisappearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewDidDisappear

    public var viewDidDisappearAnimatedBoolVoidCallsCount = 0
    public var viewDidDisappearAnimatedBoolVoidCalled: Bool {
        return viewDidDisappearAnimatedBoolVoidCallsCount > 0
    }
    public var viewDidDisappearAnimatedBoolVoidReceivedAnimated: (Bool)?
    public var viewDidDisappearAnimatedBoolVoidReceivedInvocations: [(Bool)] = []
    public var viewDidDisappearAnimatedBoolVoidClosure: ((Bool) -> Void)?

    public func viewDidDisappear(_ animated: Bool) {
        viewDidDisappearAnimatedBoolVoidCallsCount += 1
        viewDidDisappearAnimatedBoolVoidReceivedAnimated = animated
        viewDidDisappearAnimatedBoolVoidReceivedInvocations.append(animated)
        viewDidDisappearAnimatedBoolVoidClosure?(animated)
    }

    //MARK: - viewSafeAreaInsetsDidChange

    public var viewSafeAreaInsetsDidChangeVoidCallsCount = 0
    public var viewSafeAreaInsetsDidChangeVoidCalled: Bool {
        return viewSafeAreaInsetsDidChangeVoidCallsCount > 0
    }
    public var viewSafeAreaInsetsDidChangeVoidClosure: (() -> Void)?

    public func viewSafeAreaInsetsDidChange() {
        viewSafeAreaInsetsDidChangeVoidCallsCount += 1
        viewSafeAreaInsetsDidChangeVoidClosure?()
    }

    //MARK: - viewWillLayoutSubviews

    public var viewWillLayoutSubviewsVoidCallsCount = 0
    public var viewWillLayoutSubviewsVoidCalled: Bool {
        return viewWillLayoutSubviewsVoidCallsCount > 0
    }
    public var viewWillLayoutSubviewsVoidClosure: (() -> Void)?

    public func viewWillLayoutSubviews() {
        viewWillLayoutSubviewsVoidCallsCount += 1
        viewWillLayoutSubviewsVoidClosure?()
    }

    //MARK: - viewDidLayoutSubviews

    public var viewDidLayoutSubviewsVoidCallsCount = 0
    public var viewDidLayoutSubviewsVoidCalled: Bool {
        return viewDidLayoutSubviewsVoidCallsCount > 0
    }
    public var viewDidLayoutSubviewsVoidClosure: (() -> Void)?

    public func viewDidLayoutSubviews() {
        viewDidLayoutSubviewsVoidCallsCount += 1
        viewDidLayoutSubviewsVoidClosure?()
    }

    //MARK: - updateViewConstraints

    public var updateViewConstraintsVoidCallsCount = 0
    public var updateViewConstraintsVoidCalled: Bool {
        return updateViewConstraintsVoidCallsCount > 0
    }
    public var updateViewConstraintsVoidClosure: (() -> Void)?

    public func updateViewConstraints() {
        updateViewConstraintsVoidCallsCount += 1
        updateViewConstraintsVoidClosure?()
    }

    //MARK: - show

    public var showVcViewControllerSenderAnyVoidCallsCount = 0
    public var showVcViewControllerSenderAnyVoidCalled: Bool {
        return showVcViewControllerSenderAnyVoidCallsCount > 0
    }
    public var showVcViewControllerSenderAnyVoidReceivedArguments: (vc: ViewController, sender: Any?)?
    public var showVcViewControllerSenderAnyVoidReceivedInvocations: [(vc: ViewController, sender: Any?)] = []
    public var showVcViewControllerSenderAnyVoidClosure: ((ViewController, Any?) -> Void)?

    public func show(_ vc: ViewController, sender: Any?) {
        showVcViewControllerSenderAnyVoidCallsCount += 1
        showVcViewControllerSenderAnyVoidReceivedArguments = (vc: vc, sender: sender)
        showVcViewControllerSenderAnyVoidReceivedInvocations.append((vc: vc, sender: sender))
        showVcViewControllerSenderAnyVoidClosure?(vc, sender)
    }

    //MARK: - showDetailViewController

    public var showDetailViewControllerVcViewControllerSenderAnyVoidCallsCount = 0
    public var showDetailViewControllerVcViewControllerSenderAnyVoidCalled: Bool {
        return showDetailViewControllerVcViewControllerSenderAnyVoidCallsCount > 0
    }
    public var showDetailViewControllerVcViewControllerSenderAnyVoidReceivedArguments: (vc: ViewController, sender: Any?)?
    public var showDetailViewControllerVcViewControllerSenderAnyVoidReceivedInvocations: [(vc: ViewController, sender: Any?)] = []
    public var showDetailViewControllerVcViewControllerSenderAnyVoidClosure: ((ViewController, Any?) -> Void)?

    public func showDetailViewController(_ vc: ViewController, sender: Any?) {
        showDetailViewControllerVcViewControllerSenderAnyVoidCallsCount += 1
        showDetailViewControllerVcViewControllerSenderAnyVoidReceivedArguments = (vc: vc, sender: sender)
        showDetailViewControllerVcViewControllerSenderAnyVoidReceivedInvocations.append((vc: vc, sender: sender))
        showDetailViewControllerVcViewControllerSenderAnyVoidClosure?(vc, sender)
    }

    //MARK: - present

    public var presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCallsCount = 0
    public var presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCalled: Bool {
        return presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCallsCount > 0
    }
    public var presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidClosure: ((ViewController, Bool, (() -> Void)?) -> Void)?

    public func present(_ viewControllerToPresent: ViewController, animated flag: Bool, completion: (() -> Void)?) {
        presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidCallsCount += 1
        presentViewControllerToPresentViewControllerAnimatedFlagBoolCompletionVoidVoidClosure?(viewControllerToPresent, flag, completion)
    }

    //MARK: - dismiss

    public var dismissAnimatedFlagBoolVoidCallsCount = 0
    public var dismissAnimatedFlagBoolVoidCalled: Bool {
        return dismissAnimatedFlagBoolVoidCallsCount > 0
    }
    public var dismissAnimatedFlagBoolVoidReceivedFlag: (Bool)?
    public var dismissAnimatedFlagBoolVoidReceivedInvocations: [(Bool)] = []
    public var dismissAnimatedFlagBoolVoidClosure: ((Bool) -> Void)?

    public func dismiss(animated flag: Bool) {
        dismissAnimatedFlagBoolVoidCallsCount += 1
        dismissAnimatedFlagBoolVoidReceivedFlag = flag
        dismissAnimatedFlagBoolVoidReceivedInvocations.append(flag)
        dismissAnimatedFlagBoolVoidClosure?(flag)
    }


}
public class WindowMock: Window {

    public init() {}

    public var rootViewController: ViewController?


    //MARK: - makeKeyAndVisible

    public var makeKeyAndVisibleVoidCallsCount = 0
    public var makeKeyAndVisibleVoidCalled: Bool {
        return makeKeyAndVisibleVoidCallsCount > 0
    }
    public var makeKeyAndVisibleVoidClosure: (() -> Void)?

    public func makeKeyAndVisible() {
        makeKeyAndVisibleVoidCallsCount += 1
        makeKeyAndVisibleVoidClosure?()
    }


}

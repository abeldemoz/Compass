// Generated using Sourcery 2.2.3 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all
// swiftformat:disable all

import Compass
import UIKit
























public class CoordinatorMock: Coordinator, @unchecked Sendable {

    public enum MethodCall: @unchecked Sendable {
        case finish(animated: Bool)
        case start(transition: Transition, onDismissed: (() -> Void)?)
        case startChild(_: Coordinator, transition: Transition, onDismissed: (() -> Void)?)
    }

    public var log: [MethodCall] = []

    public init() {}

    public var childCoordinators: [Coordinator] = []
    public var navigator: Navigator {
        get { return underlyingNavigator }
        set(value) { underlyingNavigator = value }
    }
    public var underlyingNavigator: (Navigator)!
    public var baseViewController: UIViewController?
    public var parentCoordinator: Coordinator?


    //MARK: - finish

    public var finishAnimatedVoidCallsCount = 0
    public var finishAnimatedVoidCalled: Bool {
        return finishAnimatedVoidCallsCount > 0
    }
    public var finishAnimatedVoidReceivedAnimated: (Bool)?
    public var finishAnimatedVoidReceivedInvocations: [(Bool)] = []
    public var finishAnimatedVoidClosure: ((Bool) -> Void)?

    public func finish(animated: Bool) {
        log.append(.finish(animated: animated))
        finishAnimatedVoidCallsCount += 1
        finishAnimatedVoidReceivedAnimated = animated
        finishAnimatedVoidReceivedInvocations.append(animated)
        finishAnimatedVoidClosure?(animated)
    }

    //MARK: - start

    public var startTransitionOnDismissedVoidCallsCount = 0
    public var startTransitionOnDismissedVoidCalled: Bool {
        return startTransitionOnDismissedVoidCallsCount > 0
    }
    public var startTransitionOnDismissedVoidClosure: ((Transition, (() -> Void)?) -> Void)?

    public func start(transition: Transition, onDismissed: (() -> Void)?) {
        log.append(.start(transition: transition, onDismissed: onDismissed))
        startTransitionOnDismissedVoidCallsCount += 1
        startTransitionOnDismissedVoidClosure?(transition, onDismissed)
    }

    //MARK: - startChild

    public var startChildTransitionOnDismissedVoidCallsCount = 0
    public var startChildTransitionOnDismissedVoidCalled: Bool {
        return startChildTransitionOnDismissedVoidCallsCount > 0
    }
    public var startChildTransitionOnDismissedVoidClosure: ((Coordinator, Transition, (() -> Void)?) -> Void)?

    public func startChild(_ child: Coordinator, transition: Transition, onDismissed: (() -> Void)?) {
        log.append(.startChild(child, transition: transition, onDismissed: onDismissed))
        startChildTransitionOnDismissedVoidCallsCount += 1
        startChildTransitionOnDismissedVoidClosure?(child, transition, onDismissed)
    }


}
public class DismissableMock: Dismissable, @unchecked Sendable {

    public enum MethodCall: @unchecked Sendable {
    }

    public var log: [MethodCall] = []

    public init() {}

    public var onDismissed: ((() -> Void)?)



}
public class NavigatorMock: Navigator, @unchecked Sendable {

    public enum MethodCall: @unchecked Sendable {
        case navigate(to: UIViewController, transition: Transition)
        case exitFlow(coordinator: Coordinator, animated: Bool)
        case dismiss(animated: Bool)
        case popViewController(animated: Bool)
        case popToViewController(_: UIViewController, animated: Bool)
        case popToRootViewController(animated: Bool)
    }

    public var log: [MethodCall] = []

    public init() {}



    //MARK: - navigate

    public var navigateToTransitionVoidCallsCount = 0
    public var navigateToTransitionVoidCalled: Bool {
        return navigateToTransitionVoidCallsCount > 0
    }
    public var navigateToTransitionVoidReceivedArguments: (viewController: UIViewController, transition: Transition)?
    public var navigateToTransitionVoidReceivedInvocations: [(viewController: UIViewController, transition: Transition)] = []
    public var navigateToTransitionVoidClosure: ((UIViewController, Transition) -> Void)?

    public func navigate(to viewController: UIViewController, transition: Transition) {
        log.append(.navigate(to: viewController, transition: transition))
        navigateToTransitionVoidCallsCount += 1
        navigateToTransitionVoidReceivedArguments = (viewController: viewController, transition: transition)
        navigateToTransitionVoidReceivedInvocations.append((viewController: viewController, transition: transition))
        navigateToTransitionVoidClosure?(viewController, transition)
    }

    //MARK: - exitFlow

    public var exitFlowCoordinatorAnimatedVoidCallsCount = 0
    public var exitFlowCoordinatorAnimatedVoidCalled: Bool {
        return exitFlowCoordinatorAnimatedVoidCallsCount > 0
    }
    public var exitFlowCoordinatorAnimatedVoidReceivedArguments: (coordinator: Coordinator, animated: Bool)?
    public var exitFlowCoordinatorAnimatedVoidReceivedInvocations: [(coordinator: Coordinator, animated: Bool)] = []
    public var exitFlowCoordinatorAnimatedVoidClosure: ((Coordinator, Bool) -> Void)?

    public func exitFlow(coordinator: Coordinator, animated: Bool) {
        log.append(.exitFlow(coordinator: coordinator, animated: animated))
        exitFlowCoordinatorAnimatedVoidCallsCount += 1
        exitFlowCoordinatorAnimatedVoidReceivedArguments = (coordinator: coordinator, animated: animated)
        exitFlowCoordinatorAnimatedVoidReceivedInvocations.append((coordinator: coordinator, animated: animated))
        exitFlowCoordinatorAnimatedVoidClosure?(coordinator, animated)
    }

    //MARK: - dismiss

    public var dismissAnimatedVoidCallsCount = 0
    public var dismissAnimatedVoidCalled: Bool {
        return dismissAnimatedVoidCallsCount > 0
    }
    public var dismissAnimatedVoidReceivedAnimated: (Bool)?
    public var dismissAnimatedVoidReceivedInvocations: [(Bool)] = []
    public var dismissAnimatedVoidClosure: ((Bool) -> Void)?

    public func dismiss(animated: Bool) {
        log.append(.dismiss(animated: animated))
        dismissAnimatedVoidCallsCount += 1
        dismissAnimatedVoidReceivedAnimated = animated
        dismissAnimatedVoidReceivedInvocations.append(animated)
        dismissAnimatedVoidClosure?(animated)
    }

    //MARK: - popViewController

    public var popViewControllerAnimatedVoidCallsCount = 0
    public var popViewControllerAnimatedVoidCalled: Bool {
        return popViewControllerAnimatedVoidCallsCount > 0
    }
    public var popViewControllerAnimatedVoidReceivedAnimated: (Bool)?
    public var popViewControllerAnimatedVoidReceivedInvocations: [(Bool)] = []
    public var popViewControllerAnimatedVoidClosure: ((Bool) -> Void)?

    public func popViewController(animated: Bool) {
        log.append(.popViewController(animated: animated))
        popViewControllerAnimatedVoidCallsCount += 1
        popViewControllerAnimatedVoidReceivedAnimated = animated
        popViewControllerAnimatedVoidReceivedInvocations.append(animated)
        popViewControllerAnimatedVoidClosure?(animated)
    }

    //MARK: - popToViewController

    public var popToViewControllerAnimatedVoidCallsCount = 0
    public var popToViewControllerAnimatedVoidCalled: Bool {
        return popToViewControllerAnimatedVoidCallsCount > 0
    }
    public var popToViewControllerAnimatedVoidReceivedArguments: (viewController: UIViewController, animated: Bool)?
    public var popToViewControllerAnimatedVoidReceivedInvocations: [(viewController: UIViewController, animated: Bool)] = []
    public var popToViewControllerAnimatedVoidClosure: ((UIViewController, Bool) -> Void)?

    public func popToViewController(_ viewController: UIViewController, animated: Bool) {
        log.append(.popToViewController(viewController, animated: animated))
        popToViewControllerAnimatedVoidCallsCount += 1
        popToViewControllerAnimatedVoidReceivedArguments = (viewController: viewController, animated: animated)
        popToViewControllerAnimatedVoidReceivedInvocations.append((viewController: viewController, animated: animated))
        popToViewControllerAnimatedVoidClosure?(viewController, animated)
    }

    //MARK: - popToRootViewController

    public var popToRootViewControllerAnimatedVoidCallsCount = 0
    public var popToRootViewControllerAnimatedVoidCalled: Bool {
        return popToRootViewControllerAnimatedVoidCallsCount > 0
    }
    public var popToRootViewControllerAnimatedVoidReceivedAnimated: (Bool)?
    public var popToRootViewControllerAnimatedVoidReceivedInvocations: [(Bool)] = []
    public var popToRootViewControllerAnimatedVoidClosure: ((Bool) -> Void)?

    public func popToRootViewController(animated: Bool) {
        log.append(.popToRootViewController(animated: animated))
        popToRootViewControllerAnimatedVoidCallsCount += 1
        popToRootViewControllerAnimatedVoidReceivedAnimated = animated
        popToRootViewControllerAnimatedVoidReceivedInvocations.append(animated)
        popToRootViewControllerAnimatedVoidClosure?(animated)
    }


}

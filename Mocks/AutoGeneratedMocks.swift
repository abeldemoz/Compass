// Generated using Sourcery 2.2.3 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all
// swiftformat:disable all

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
    public var baseViewController: UIViewController?
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
public class NavigatorMock: Navigator {

    public init() {}



    //MARK: - navigate

    public var navigateToViewControllerUIViewControllerTransitionTransitionVoidCallsCount = 0
    public var navigateToViewControllerUIViewControllerTransitionTransitionVoidCalled: Bool {
        return navigateToViewControllerUIViewControllerTransitionTransitionVoidCallsCount > 0
    }
    public var navigateToViewControllerUIViewControllerTransitionTransitionVoidReceivedArguments: (viewController: UIViewController, transition: Transition)?
    public var navigateToViewControllerUIViewControllerTransitionTransitionVoidReceivedInvocations: [(viewController: UIViewController, transition: Transition)] = []
    public var navigateToViewControllerUIViewControllerTransitionTransitionVoidClosure: ((UIViewController, Transition) -> Void)?

    public func navigate(to viewController: UIViewController, transition: Transition) {
        navigateToViewControllerUIViewControllerTransitionTransitionVoidCallsCount += 1
        navigateToViewControllerUIViewControllerTransitionTransitionVoidReceivedArguments = (viewController: viewController, transition: transition)
        navigateToViewControllerUIViewControllerTransitionTransitionVoidReceivedInvocations.append((viewController: viewController, transition: transition))
        navigateToViewControllerUIViewControllerTransitionTransitionVoidClosure?(viewController, transition)
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

    public var popToViewControllerViewControllerUIViewControllerAnimatedBoolVoidCallsCount = 0
    public var popToViewControllerViewControllerUIViewControllerAnimatedBoolVoidCalled: Bool {
        return popToViewControllerViewControllerUIViewControllerAnimatedBoolVoidCallsCount > 0
    }
    public var popToViewControllerViewControllerUIViewControllerAnimatedBoolVoidReceivedArguments: (viewController: UIViewController, animated: Bool)?
    public var popToViewControllerViewControllerUIViewControllerAnimatedBoolVoidReceivedInvocations: [(viewController: UIViewController, animated: Bool)] = []
    public var popToViewControllerViewControllerUIViewControllerAnimatedBoolVoidClosure: ((UIViewController, Bool) -> Void)?

    public func popToViewController(_ viewController: UIViewController, animated: Bool) {
        popToViewControllerViewControllerUIViewControllerAnimatedBoolVoidCallsCount += 1
        popToViewControllerViewControllerUIViewControllerAnimatedBoolVoidReceivedArguments = (viewController: viewController, animated: animated)
        popToViewControllerViewControllerUIViewControllerAnimatedBoolVoidReceivedInvocations.append((viewController: viewController, animated: animated))
        popToViewControllerViewControllerUIViewControllerAnimatedBoolVoidClosure?(viewController, animated)
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

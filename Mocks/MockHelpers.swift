//
//  MockHelpers.swift
//  Compass
//
//  Created by Abel Demoz on 28/09/2024.
//

extension NavigatorMock.MethodCall: Equatable {
    public static func == (lhs: NavigatorMock.MethodCall, rhs: NavigatorMock.MethodCall) -> Bool {
        switch (lhs, rhs) {
        case let (.dismiss(lhsAnimated), .dismiss(rhsAnimated)):
            return lhsAnimated == rhsAnimated
        case let (.navigate(lhsViewController, lhsTransition), .navigate(rhsViewController, rhsTransition)):
            return lhsViewController == rhsViewController && lhsTransition == rhsTransition
        case let (.exitFlow(lhsCoordinator, lhsAnimated), .exitFlow(rhsCoordinator, rhsAnimated)):
            return lhsCoordinator === rhsCoordinator && lhsAnimated == rhsAnimated
        case let (.popViewController(lhsAnimated), .popViewController(rhsAnimated)):
            return lhsAnimated == rhsAnimated
        case let (.popToViewController(lhsViewController, lhsAnimated), .popToViewController(rhsViewController, rhsAnimated)):
            return lhsViewController == rhsViewController && lhsAnimated == rhsAnimated
        case let (.popToRootViewController(lhsAnimated), .popToRootViewController(rhsAnimated)):
            return lhsAnimated == rhsAnimated
        default:
            return false
        }
    }
}

extension CoordinatorMock.MethodCall: Equatable {
    public static func == (lhs: CoordinatorMock.MethodCall, rhs: CoordinatorMock.MethodCall) -> Bool {
        switch (lhs, rhs) {
        case let (.finish(lhsAnimated), .finish(rhsAnimated)):
            return lhsAnimated == rhsAnimated
        case let (.start(lhsTransition, _), .start(rhsTransition, _)):
            return lhsTransition == rhsTransition
        case let (.startChild(lhsCoordinator, lhsTransition, _), .startChild(rhsCoordinator, rhsTransition, _)):
            return lhsCoordinator === rhsCoordinator && lhsTransition == rhsTransition
        default:
            return false
        }
    }
}

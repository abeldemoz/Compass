//
// NavigatorSpy.swift
//
//
// Created by Abel Demoz on 02/02/2024.
//

import Compass

public final class NavigatorSpy: Navigator {

    public enum MethodCall: Equatable {
        case navigate(viewController: ViewController, transition: Transition)
        case exitFlow(coordinator: Coordinator, animated: Bool)
        case dismiss(animated: Bool)
        case popViewController(animated: Bool)
        case popToViewController(_ viewController: ViewController, animated: Bool)
        case popToRootViewController(animated: Bool)

        public static func == (lhs: NavigatorSpy.MethodCall, rhs: NavigatorSpy.MethodCall) -> Bool {
            switch (lhs, rhs) {
            case let (.navigate(viewController1, transition1), .navigate(viewController2, transition2)):
                return viewController1 === viewController2 && transition1 == transition2
            case let (.exitFlow(coordinator1, animated1), .exitFlow(coordinator2, animated2)):
                return coordinator1 === coordinator2 && animated1 == animated2
            case let (.dismiss(animated1), .dismiss(animated2)):
                return animated1 == animated2
            case let (.popViewController(animated1), .popViewController(animated2)):
                return animated1 == animated2
            case let (.popToViewController(viewController1, animated1), .popToViewController(viewController2, animated: animated2)):
                return viewController1 === viewController2 && animated1 == animated2
            case let (.popToRootViewController(animated1), .popToRootViewController(animated2)):
                return animated1 == animated2
            default:
                return false
            }
        }
    }

    public var log: [MethodCall] = []

    public init() {}

    public func navigate(to viewController: ViewController, transition: Transition) {
        log.append(.navigate(viewController: viewController, transition: transition))
    }

    public func exitFlow(coordinator: Coordinator, animated: Bool) {
        log.append(.exitFlow(coordinator: coordinator, animated: animated))
    }

    public func dismiss(animated: Bool) {
        log.append(.dismiss(animated: animated))
    }

    public func popViewController(animated: Bool) {
        log.append(.popViewController(animated: animated))
    }

    public func popToViewController(_ viewController: ViewController, animated: Bool) {
        log.append(.popToViewController(viewController, animated: animated))
    }

    public func popToRootViewController(animated: Bool) {
        log.append(.popToRootViewController(animated: animated))
    }

}

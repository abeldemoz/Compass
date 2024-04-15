//
// CoordinatorSpy.swift
//
//
// Created by Abel Demoz on 28/01/2024.
//

import Compass
import UIKit

public final class CoordinatorSpy: Coordinator {
    public enum MethodCall: Equatable {
        case start(transition: Transition)
    }

    public var log: [MethodCall] = []

    public var childCoordinators: [Coordinator] = []

    public var navigator: Navigator = NavigatorSpy()

    public var baseViewController: UIViewController?

    public var parentCoordinator: Coordinator?

    public init() {}
    
    public func start(transition: Transition, onDismissed: (() -> Void)?) {
        defer { onDismissed?() }
        log.append(.start(transition: transition))
    }

}

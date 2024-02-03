//
// CoordinatorSpy.swift
//
//
// Created by Abel Demoz on 28/01/2024.
//

import Compass

final class CoordinatorSpy: Coordinator {
    enum MethodCall: Equatable {
        case start(transition: Transition)
    }

    var log: [MethodCall] = []

    var childCoordinators: [Coordinator] = []

    var navigator: Navigator = NavigatorSpy()

    var baseViewController: ViewController?

    var parentCoordinator: Coordinator?

    func start(transition: Transition, onDismissed: (() -> Void)?) {
        defer { onDismissed?() }
        log.append(.start(transition: transition))
    }

}

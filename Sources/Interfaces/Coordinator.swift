//
// Coordinator.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

@MainActor 
public protocol Coordinator: AnyObject {

    var childCoordinators: [Coordinator] { get set }
    var navigator: Navigator { get }
    var baseViewController: UIViewController? { get set }
    var parentCoordinator: Coordinator? { get set }

    func finish(animated: Bool)
    func start(transition: Transition, onDismissed: (() -> Void)?)
    func startChild(
        _ child: Coordinator,
        transition: Transition,
        onDismissed: (() -> Void)?
    )
}

public extension Coordinator {

    func finish(animated: Bool) {
        navigator.exitFlow(coordinator: self, animated: animated)
    }

    func startChild(
        _ child: Coordinator,
        transition: Transition,
        onDismissed: (() -> Void)?
    ) {
        childCoordinators.append(child)
        child.parentCoordinator = self
        child.start(transition: transition, onDismissed: { @MainActor [weak self, weak child] in
            guard let self, let child else { return }

            self.removeChild(child)
            onDismissed?()
        })
    }

    private func removeChild(_ child: Coordinator) {
        guard let index = childCoordinators.firstIndex(where: { $0 === child }) else {
            return
        }

        childCoordinators.remove(at: index)
    }
}

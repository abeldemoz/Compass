//
// Coordinator.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

public protocol Coordinator: AnyObject {

    var childCoordinators: [Coordinator] { get set }
    var navigator: Navigator { get }
    var rootViewController: ViewController? { get set }
    var parentCoordinator: Coordinator? { get set }

    func dismiss(animated: Bool)
    func start(transition: Transition, onDismissed: (() -> Void)?)
    func presentChild(
        _ child: Coordinator,
        transition: Transition,
        onDismissed: (() -> Void)?
    )
}

public extension Coordinator {

    func dismiss(animated: Bool) {
        navigator.dismiss(animated: animated)
    }

    func presentChild(
        _ child: Coordinator,
        transition: Transition,
        onDismissed: (() -> Void)?
    ) {
        childCoordinators.append(child)
        child.start(transition: transition, onDismissed: { [weak self, weak child] in
            guard let self, let child else { return }

            self.removeChild(child)
            onDismissed?()
        })
        child.parentCoordinator = self
    }

    private func removeChild(_ child: Coordinator) {
        guard let index = childCoordinators.firstIndex(where: { $0 === child }) else {
            return
        }

        childCoordinators.remove(at: index)
    }
}

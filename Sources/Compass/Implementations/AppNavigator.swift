//
// AppNavigator.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import UIKit

public final class AppNavigator: Navigator {

    private let window: Window

    public init(window: Window) {
        self.window = window
    }

    public func navigate(to viewController: inout ViewController, transition: Transition, onDismissed: (() -> Void)?) {
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }

    public func exitFlow(coordinator: Coordinator, animated: Bool) {
        fatalError("AppNavigator should never exit flow")
    }

    public func dismiss(animated: Bool) {
        fatalError("AppNavigator should never dismiss")
    }

    public func dismissViewController(animated: Bool) {
        fatalError("AppNavigator should never dismiss")
    }

    public func popViewController(animated: Bool) {
        fatalError("AppNavigator should never pop")
    }

    public func popToViewController(_ viewController: ViewController, animated: Bool) {
        fatalError("AppNavigator should never pop")
    }

    public func popToRootViewController(animated: Bool) {
        fatalError("AppNavigator should never pop")
    }
}

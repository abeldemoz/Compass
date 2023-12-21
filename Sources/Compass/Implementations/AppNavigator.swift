//
// AppNavigator.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import UIKit

final class AppNavigator: Navigator {

    private let window: Window

    init(window: Window) {
        self.window = window
    }

    func present(_ viewController: inout ViewController, transition: Transition, onDismissed: (() -> Void)?) {
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }

    func dismiss(animated: Bool) {
        fatalError("AppNavigator should never dismiss")
    }

    func dismissViewController(animated: Bool) {
        fatalError("AppNavigator should never dismiss")
    }
}

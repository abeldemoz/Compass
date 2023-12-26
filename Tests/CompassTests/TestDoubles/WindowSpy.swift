//
// WindowSpy.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import Compass

final class WindowSpy: Window {

    enum MethodCall: Equatable {
        case makeKeyAndVisible
    }

    var log: [MethodCall] = []

    var rootViewController: ViewController?

    func makeKeyAndVisible() {
        log.append(.makeKeyAndVisible)
    }
}

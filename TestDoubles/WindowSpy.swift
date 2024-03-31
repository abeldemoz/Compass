//
// WindowSpy.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import Compass

public final class WindowSpy: Window {

    public enum MethodCall: Equatable {
        case makeKeyAndVisible
    }

    public var log: [MethodCall] = []

    public var rootViewController: ViewController?

    public init() {}

    public func makeKeyAndVisible() {
        log.append(.makeKeyAndVisible)
    }
}

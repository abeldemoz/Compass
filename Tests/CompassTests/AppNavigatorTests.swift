//
// AppNavigatorTests.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import Compass
import XCTest

final class AppNavigatorTests: XCTestCase {

    private var window: WindowSpy!
    private var sut: AppNavigator!

    override func setUp() {
        super.setUp()

        window = .init()
        sut = .init(window: window)
    }

    func test_navigate() {
        var viewController: ViewController = BasicViewController()
        sut.navigate(to: &viewController, transition: .push(animated: true), onDismissed: nil)

        XCTAssert(window.rootViewController === viewController)
        XCTAssertEqual(window.log, [.makeKeyAndVisible])
    }
}

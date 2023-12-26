//
// BasicNavigationControllerTests.swift
//
//
// Created by Abel Demoz on 22/12/2023.
//

import Compass
import XCTest

final class BasicNavigationControllerTests: XCTestCase {

    private var navigationController: BasicNavigationController!

    override func setUp() {
        super.setUp()

        navigationController = BasicNavigationController()
        navigationController.viewControllers = [BasicViewController()]
    }

    override func tearDown() {
        navigationController = nil
        super.tearDown()
    }

    func test_deinit() {
        let expectation = expectation(description: "BasicNavigationControllerTests_test_deinit")
        let fulfillExpectation = expectation.fulfill
        navigationController?.onDismissed = fulfillExpectation
        navigationController = nil
        wait(for: [expectation], timeout: 1)
    }
}

//
// BasicViewControllerTests.swift
//
//
// Created by Abel Demoz on 22/12/2023.
//

import Compass
import XCTest

final class BasicViewControllerTests: XCTestCase {

    func test_deinit() {
        let expectation = XCTestExpectation(description: "test_deinit")
        var viewController: BasicViewController? = .init()
        viewController?.onDismissed = expectation.fulfill
        viewController = nil
        wait(for: [expectation], timeout: 1)
    }
}

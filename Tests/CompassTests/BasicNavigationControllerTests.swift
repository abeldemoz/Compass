//
// BasicNavigationControllerTests.swift
//
//
// Created by Abel Demoz on 22/12/2023.
//

import Compass
import XCTest

final class BasicNavigationControllerTests: XCTestCase {

    func test_deinit() {
        var navigationController: BasicNavigationController? = BasicNavigationController()
        let expectation = expectation(description: "BasicNavigationControllerTests_test_deinit")
        navigationController?.onDismissed = expectation.fulfill
        navigationController = nil
        wait(for: [expectation], timeout: 1)
    }
}

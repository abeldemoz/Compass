//
// BasicHostingControllerTests.swift
//
//
// Created by Abel Demoz on 23/12/2023.
//

import Compass
import SwiftUI
import XCTest

final class BasicHostingControllerTests: XCTestCase {

    private var basicHostingController: BasicHostingController<Spacer>!

    override func setUp() {
        super.setUp()

        basicHostingController = BasicHostingController(rootView: Spacer())
    }

    func test_deinit() {
        let expectation = XCTestExpectation(description: "BasicHostingControllerTests_test_deinit")
        let fulfillExpectation = expectation.fulfill
        basicHostingController?.onDismissed = fulfillExpectation
        basicHostingController = nil
        wait(for: [expectation], timeout: 1)
    }
}

//
// BasicNavigatorTests.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import XCTest
@testable import Compass

final class BasicNavigatorTests: XCTestCase {
    private var navigationController: NavigationControllerSpy!
    private var sut: BasicNavigator!

    override func setUp() {
        super.setUp()

        navigationController = .init()
        sut = .init(
            navigationController: navigationController,
            makeNavigationController: createNavigationController
        )
    }

    func test_init() {
        sut = .init(navigationController: navigationController, makeNavigationController: createNavigationController)

        XCTAssert(sut.navigationControllers.count == 1)
        XCTAssert(sut.navigationControllers.first === navigationController)
    }

    func test_navigate_pushTransition() {
        var viewController: ViewController = BasicViewController()
        let expectation = XCTestExpectation(description: "test_navigate_pushesViewController")

        sut.navigate(to: &viewController, transition: .push(animated: true), onDismissed: expectation.fulfill)
        viewController.onDismissed?()
        viewController.onDismissed = nil

        XCTAssertEqual(navigationController.log, [.pushViewController(animated: true)])
        wait(for: [expectation], timeout: 1)
    }

    func test_navigate_modalTransition() {
        var viewController: ViewController = BasicViewController()
        let navController = NavigationControllerSpy()
        let navControllerClosure = { navController as NavigationController }
        let transition = Transition.modal(
            animated: true,
            presentationStyle: .formSheet,
            transitionStyle: .flipHorizontal,
            isModalInPresentation: true
        )
        let expectation = XCTestExpectation(description: "")
        sut = .init(navigationController: navigationController, makeNavigationController: navControllerClosure)

        sut.navigate(to: &viewController, transition: transition, onDismissed: expectation.fulfill)

        XCTAssertEqual(navController.viewControllersStack.count, 1)
        XCTAssert(navController.viewControllersStack.first === viewController)
        XCTAssertEqual(navController.modalPresentationStyle, .formSheet)
        XCTAssertEqual(navController.modalTransitionStyle, .flipHorizontal)
        XCTAssertEqual(navController.isModalInPresentation, true)
        XCTAssertEqual(navigationController.log, [.present(animated: true)])
        XCTAssertEqual(sut.navigationControllers.count, 2)
        XCTAssert(sut.navigationControllers.last === navController)

        navController.onDismissed?()
        XCTAssert(sut.navigationControllers.count == 1)
        wait(for: [expectation], timeout: 1)
    }

    func test_dismiss() {
        var viewController: ViewController = BasicViewController()
        let navController = NavigationControllerSpy()
        let navControllerClosure = { navController as NavigationController }
        let transition = Transition.modal(
            animated: true,
            presentationStyle: .formSheet,
            transitionStyle: .flipHorizontal,
            isModalInPresentation: true
        )
        navController._presentingViewController = navigationController
        sut = .init(navigationController: navigationController, makeNavigationController: navControllerClosure)

        sut.navigate(to: &viewController, transition: transition, onDismissed: nil)
        XCTAssertEqual(sut.navigationControllers.count, 2)
        navigationController.log = []
        sut.dismiss(animated: true)
        XCTAssertEqual(navigationController.log, [.dismiss(animated: true)])
        XCTAssertEqual(sut.navigationControllers.count, 1)
    }

    func test_popViewController() {
        sut.popViewController(animated: true)
        XCTAssertEqual(navigationController.log, [.popTopViewController(animated: true)])
    }

    func test_popToViewController() {
        sut.popToViewController(BasicViewController(), animated: true)
        XCTAssertEqual(navigationController.log, [.popToViewController(animated: true)])
    }

    func test_popToRootViewController() {
        sut.popToRootViewController(animated: true)
        XCTAssertEqual(navigationController.log, [.popToTheRootViewController(animated: true)])
    }

    private func createNavigationController() -> NavigationController {
        NavigationControllerSpy()
    }
}

//
// BasicNavigatorTests.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import XCTest
import CompassTestDoubles
@testable import Compass

final class BasicNavigatorTests: XCTestCase {
    private var navigationController: NavigationControllerSpy!
    private var sut: BasicNavigator!

    override func setUp() {
        super.setUp()

        navigationController = .init()
        sut = .init(navigationController: navigationController)
    }

    func test_navigate_pushTransition() {
        let viewController: ViewController = BasicViewController()

        sut.navigate(to: viewController, transition: .push(animated: true))

        XCTAssertEqual(navigationController.log, [.pushViewController(animated: true)])
    }

    func test_navigate_modalTransition() {
        let viewController: ViewController = BasicViewController()
        let transition = Transition.modal(animated: true)
        sut = .init(navigationController: navigationController)

        sut.navigate(to: viewController, transition: transition)

        XCTAssertEqual(navigationController.log, [.present(animated: true)])
    }

    // TODO: finish writing exitFlow method test(s)
//    func test_exitFlow() {
//        let baseViewController = NavigationControllerSpy()
//        let coordinator = CoordinatorSpy()
//        coordinator.baseViewController = baseViewController
//
//        sut.exitFlow(coordinator: coordinator, animated: true)
//        XCTAssertEqual(baseViewController.log, [.dismiss(animated: true)])
//    }

    func test_dismiss() {
        let viewController: ViewController = BasicViewController()

        let transition = Transition.modal(animated: true)
        sut = .init(navigationController: navigationController)

        sut.navigate(to: viewController, transition: transition)
        navigationController.log = []
        sut.dismiss(animated: true)
        XCTAssertEqual(navigationController.log, [.dismiss(animated: true)])
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
}

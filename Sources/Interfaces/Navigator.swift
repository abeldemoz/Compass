//
// Navigator.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

@MainActor 
public protocol Navigator: AnyObject {
    func navigate(to viewController: UIViewController, transition: Transition)
    func exitFlow(coordinator: Coordinator, animated: Bool)
    func dismiss(animated: Bool)
    func popViewController(animated: Bool)
    func popToViewController(_ viewController: UIViewController, animated: Bool)
    func popToRootViewController(animated: Bool)
}

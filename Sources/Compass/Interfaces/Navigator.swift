//
// Navigator.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import Foundation

public protocol Navigator: AnyObject {
    func present(_ viewController: inout ViewController, transition: Transition, onDismissed: (() -> Void)?)
    func dismiss(animated: Bool)
}

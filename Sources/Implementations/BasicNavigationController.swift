//
// BasicNavigationController.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

open class BasicNavigationController: UINavigationController, Dismissable {

    public var onDismissed: (() -> Void)?

    override public func viewDidDisappear(_ animated: Bool) {
        if isBeingDismissed {
            onDismissed?()
            onDismissed = nil
        }
        super.viewDidDisappear(animated)
    }
}

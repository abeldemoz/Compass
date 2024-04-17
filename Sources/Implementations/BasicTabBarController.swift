//
// BasicTabBarController.swift
//
//
// Created by Abel Demoz on 29/03/2024.
//

import UIKit

public class BasicTabBarController: UITabBarController {

    public var onDismissed: (() -> Void)? = nil

    deinit {
        onDismissed?()
        onDismissed = nil
    }
}

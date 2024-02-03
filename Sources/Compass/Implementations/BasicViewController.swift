//
// BasicViewController.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

open class BasicViewController: UIViewController, ViewController {

    public var onDismissed: (() -> Void)? = nil

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override public func viewDidDisappear(_ animated: Bool) {
        if isBeingDismissed {
            onDismissed?()
            onDismissed = nil
        }
        super.viewDidDisappear(animated)
    }

    deinit {
        onDismissed?()
        onDismissed = nil
    }
}

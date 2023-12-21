//
// BasicNavigationController.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

public final class BasicNavigationController: UINavigationController {

    public var onDismissed: (() -> Void)?

    public init(rootViewController: ViewController) {
        guard let rootViewController = rootViewController as? UIViewController else {
            super.init(rootViewController: UIViewController())
            return
        }
        super.init(rootViewController: rootViewController)
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
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

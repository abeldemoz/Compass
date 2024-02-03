//
// BasicNavigationController.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

open class BasicNavigationController: UINavigationController, NavigationController {

    public var onDismissed: (() -> Void)?

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    public init(rootViewController: ViewController) {
        guard let viewController = rootViewController as? UIViewController else {
            super.init(nibName: nil, bundle: nil)
            return
        }
        super.init(rootViewController: viewController)
    }

    @available(*, unavailable)
    public required init?(coder aDecoder: NSCoder) {
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

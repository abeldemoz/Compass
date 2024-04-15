//
// BasicHostingController.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import SwiftUI

public final class BasicHostingController<V>: UIHostingController<V> where V: View {

    public var onDismissed: (() -> Void)?

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

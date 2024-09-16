//
// BasicHostingController.swift
//
//
// Created by Abel Demoz on 21/12/2023.
//

import SwiftUI

public final class BasicHostingController<V: View>: UIHostingController<V>, Dismissable {

    public var onDismissed: (() -> Void)?

    public weak var viewLifeCycleDelegate: ViewLifeCycleDelegate?

    public override func loadView() {
        super.loadView()
        viewLifeCycleDelegate?.loadView()
    }

    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewLifeCycleDelegate?.viewDidAppear()
    }

    override public func viewDidDisappear(_ animated: Bool) {
        if isBeingDismissed {
            onDismissed?()
            onDismissed = nil
        }
        super.viewDidDisappear(animated)
    }

    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        viewLifeCycleDelegate?.viewDidLayoutSubviews()
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        viewLifeCycleDelegate?.viewDidLoad()
    }

    public override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        viewLifeCycleDelegate?.viewIsAppearing()
    }

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewLifeCycleDelegate?.viewWillAppear()
    }

    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        viewLifeCycleDelegate?.viewWillDisappear()
    }

    public override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        viewLifeCycleDelegate?.viewWillLayoutSubviews()
    }

    public override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        viewLifeCycleDelegate?.viewWillTransition(to: size, with: coordinator)
    }
}

//
// BasicViewController.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

open class BasicViewController: UIViewController, Dismissable {

    public var onDismissed: (() -> Void)?
    public weak var viewLifeCycleDelegate: ViewLifeCycleDelegate?

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override open func loadView() {
        super.loadView()
        viewLifeCycleDelegate?.loadView()
    }

    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewLifeCycleDelegate?.viewDidAppear()
    }

    override open func viewDidDisappear(_ animated: Bool) {
        if isBeingDismissed {
            onDismissed?()
            onDismissed = nil
        }
        super.viewDidDisappear(animated)
        viewLifeCycleDelegate?.viewDidDisappear()
    }

    override open func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        viewLifeCycleDelegate?.viewDidLayoutSubviews()
    }

    override open func viewDidLoad() {
        super.viewDidLoad()
        viewLifeCycleDelegate?.viewDidLoad()
    }

    override open func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        viewLifeCycleDelegate?.viewIsAppearing()
    }

    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewLifeCycleDelegate?.viewWillAppear()
    }

    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        viewLifeCycleDelegate?.viewWillDisappear()
    }

    override open func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        viewLifeCycleDelegate?.viewWillLayoutSubviews()
    }

    override open func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        viewLifeCycleDelegate?.viewWillTransition(to: size, with: coordinator)
    }
}

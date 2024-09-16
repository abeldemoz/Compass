//
//  ViewLifeCycleDelegate.swift
//
//
//  Created by Abel Demoz on 08/09/2024.
//

import UIKit

@MainActor public protocol ViewLifeCycleDelegate: AnyObject {
    func loadView()
    func viewDidAppear()
    func viewDidDisappear()
    func viewDidLayoutSubviews()
    func viewDidLoad()
    func viewIsAppearing()
    func viewWillAppear()
    func viewWillDisappear()
    func viewWillLayoutSubviews()
    func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator)
}

public extension ViewLifeCycleDelegate {
    func loadView() {}
    func viewDidAppear() {}
    func viewDidDisappear() {}
    func viewDidLayoutSubviews() {}
    func viewDidLoad() {}
    func viewIsAppearing() {}
    func viewWillAppear() {}
    func viewWillDisappear() {}
    func viewWillLayoutSubviews() {}
    func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {}

}

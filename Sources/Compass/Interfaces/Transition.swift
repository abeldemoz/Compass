//
// Transition.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

public enum Transition {
    case push(animated: Bool)
    case modal(
        animated: Bool,
        presentationStyle: UIModalPresentationStyle = .automatic,
        transitionStyle: UIModalTransitionStyle = .coverVertical,
        isModalInPresentation: Bool = false
    )
}

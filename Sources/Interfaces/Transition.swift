//
// Transition.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

import UIKit

public enum Transition: Equatable {
    case push(animated: Bool)
    case modal(animated: Bool)
}

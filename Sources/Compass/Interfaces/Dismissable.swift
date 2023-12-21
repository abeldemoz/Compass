//
// Dismissable.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

public protocol Dismissable {
    var onDismissed: (() -> Void)? { get set }
}

//
// Dismissable.swift
//
//
// Created by Abel Demoz on 15/12/2023.
//

public protocol Dismissable {
    @MainActor var onDismissed: (() -> Void)? { get set }
}

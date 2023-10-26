//
//  SelfReturnable.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 10/25/23.
//

import Foundation

protocol SelfReturnable {
    associatedtype ReturnType
    func with<T>(_ keyPath: WritableKeyPath<Self, T>, _ value: T) -> ReturnType
}

extension SelfReturnable {
    func with<T>(_ keyPath: WritableKeyPath<Self, T>, _ value: T) -> Self {
        var copy = self
        copy[keyPath: keyPath] = value
        return copy
    }
}

protocol RefSelfReturnable {
    associatedtype ReturnType
    func with<T>(_ keyPath: ReferenceWritableKeyPath<Self, T>, _ value: T) -> ReturnType
}

extension RefSelfReturnable {
    func with<T>(_ keyPath: ReferenceWritableKeyPath<Self, T>, _ value: T) -> Self {
        let copy = self
        copy[keyPath: keyPath] = value
        return copy
    }
}

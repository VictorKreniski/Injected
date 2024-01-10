//
//  InjectionKey.swift
//
//  Created by Victor Kreniski on 2023-01-03.

public protocol InjectionKey {
    associatedtype Value
    
    static var currentValue: Self.Value { get set }
}

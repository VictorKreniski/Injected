//
//  InjectedValues.swift
//
//  Created by Victor Kreniski on 2023-01-03.

public struct InjectedValues {
    
    private static var current = InjectedValues()
    
    public static subscript<K>(key: K.Type) -> K.Value where K: InjectionKey {
        get { key.currentValue }
        set { key.currentValue = newValue }
    }
    
    public static subscript<T>(_ keyPath: WritableKeyPath<InjectedValues, T>) -> T {
        get { current[keyPath: keyPath] }
        set { current[keyPath: keyPath] = newValue }
    }
    
}

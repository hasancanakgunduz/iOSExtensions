//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 11.12.2021.
//

import Foundation

public extension Dictionary where Key == String {
    func value<V>(for key: Key,
                  default defaultExpression: @autoclosure () -> V) -> V {
        return (self[key] as? V) ?? defaultExpression()
    }
}

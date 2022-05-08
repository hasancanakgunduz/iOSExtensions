//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 14.11.2021.
//

import Foundation

public protocol InstanceEquatable: AnyObject, Equatable {}

public extension InstanceEquatable {
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs === rhs
    }
}

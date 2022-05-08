//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 14.11.2021.
//

import Foundation

public func +<A, B, C>(lhs: @escaping (A) throws -> B,
                rhs: @escaping (B) throws -> C) -> (A) throws -> C {
    return { try rhs(lhs($0)) }
}

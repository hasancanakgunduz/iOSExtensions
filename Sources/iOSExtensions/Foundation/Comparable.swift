//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 15.11.2021.
//

import Foundation

public enum ComparisonOutcome {
    case equal
    case greater
    case less
}

public extension Comparable {
    func compare(to other: Self) -> ComparisonOutcome {
        if self < other {
            return .less
        }

        if self > other {
            return .greater
        }

        return .equal
    }
}

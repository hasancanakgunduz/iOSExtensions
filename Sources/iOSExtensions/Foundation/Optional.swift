//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 20.11.2021.
//

import Foundation

public extension Optional where Wrapped == Bool {
    var isTrue: Bool {
        switch self {
        case let bool?:
            return bool
        case nil:
            return false
        }
    }
}

public extension Optional where Wrapped: Collection {
    var hasValue: Bool {
        switch self {
        case let collection?:
            return !collection.isEmpty
        case nil:
            return false
        }
    }
}

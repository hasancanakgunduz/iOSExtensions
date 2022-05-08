//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 8.12.2021.
//

import Foundation

public func ~><T>(expression: @autoclosure () throws -> T,
           errorTransform: (Error) -> Error) throws -> T {
    do {
        return try expression()
    } catch {
        throw errorTransform(error)
    }
}

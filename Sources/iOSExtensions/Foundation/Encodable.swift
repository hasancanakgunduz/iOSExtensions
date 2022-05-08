//
//  File.swift
//  
//
//  Created by HASANCAN AKGUNDUZ on 8.05.2022.
//

import Foundation

public extension Encodable {
    func encoded() throws -> Data {
        return try JSONEncoder().encode(self)
    }
}

//
//  File.swift
//  
//
//  Created by HASANCAN AKGUNDUZ on 8.05.2022.
//

import Foundation

public extension Data {
    func decoded<T: Decodable>() throws -> T {
        return try JSONDecoder().decode(T.self, from: self)
    }
}

//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 15.11.2021.
//

import Foundation

public extension Collection where Element == String {
    func countWords() -> Int {
        return reduce(0) { count, string in
            let components = string.components(separatedBy: .whitespacesAndNewlines)
            return count + components.count
        }
    }
}

//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 15.11.2021.
//

import Foundation

public extension Array where Element: Numeric {
    func sum() -> Element {
        return reduce(0) { partialResult, elem in
            partialResult + elem
        }
    }
}

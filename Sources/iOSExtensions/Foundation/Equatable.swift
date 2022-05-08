//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 23.11.2021.
//

import Foundation

public extension Equatable {
    func isAny(of candidates: Self...) -> Bool {
        return candidates.contains(self)
    }
}

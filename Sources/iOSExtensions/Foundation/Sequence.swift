//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 30.11.2021.
//

import Foundation

public extension Sequence {
    func forEach(_ closure: (Element) -> () -> Void) {
        for element in self {
            closure(element)()
        }
    }
    
    func sum<N: Numeric>(by valueProvider: (Element) -> N) -> N {
        return reduce(0) { result, element in
            return result + valueProvider(element)
        }
    }
}

public extension Sequence where Element == () -> Void {
    func callAll() {
        forEach { $0() }
    }
}

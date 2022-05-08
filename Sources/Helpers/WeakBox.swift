//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 20.11.2021.
//

import Foundation

public class WeakBox<T: AnyObject> {
    weak var value: T?
    
    init(_ value: T) {
        self.value = value
    }
}

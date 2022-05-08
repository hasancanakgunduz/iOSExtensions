//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 14.11.2021.
//

import Foundation

public func performUIUpdate(using closure: @escaping () -> Void) {
    // If we are already on the main thread, execute the closure directly
    if Thread.isMainThread {
        closure()
    } else {
        DispatchQueue.main.async(execute: closure)
    }
}

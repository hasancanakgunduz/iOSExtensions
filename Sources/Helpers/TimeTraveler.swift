//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 14.11.2021.
//

import Foundation

public class TimeTraveler {
    private var date = Date()

    func travel(by timeInterval: TimeInterval) {
        date = date.addingTimeInterval(timeInterval)
    }

    func generateDate() -> Date {
        return date
    }
}

//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 12.12.2021.
//

import Foundation

public class Debouncer {
    let delay: Double
    var timer: Timer?

    init(delay: Double) {
        self.delay = delay
    }

    func debounce(task: @escaping (() -> Void)) {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: delay, repeats: false) { _ in
            task()
        }
    }
}

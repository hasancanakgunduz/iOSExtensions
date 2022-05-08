//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 16.11.2021.
//

import Foundation

public class RequestToken {
    private weak var task: URLSessionDataTask?

    init(task: URLSessionDataTask) {
        self.task = task
    }

    func cancel() {
        task?.cancel()
    }
}

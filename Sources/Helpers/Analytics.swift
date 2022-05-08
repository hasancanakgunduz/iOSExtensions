//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 20.11.2021.
//

import Foundation

public enum AnalyticsEvent {

}

public extension AnalyticsEvent {
    var name: String {
        switch self {
        default:
            return ""
        }
    }
}

public extension AnalyticsEvent {
    var metadata: [String : String] {
        switch self {
        default:
            return [:]
        }
    }
}

public protocol AnalyticsEngine: AnyObject {
    func sendAnalyticsEvent(named name: String, metadata: [String : String])
}

public class AnalyticsManager {
    private let engine: AnalyticsEngine

    init(engine: AnalyticsEngine) {
        self.engine = engine
    }

    func log(_ event: AnalyticsEvent) {
        engine.sendAnalyticsEvent(named: event.name, metadata: event.metadata)
    }
}

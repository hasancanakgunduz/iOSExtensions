//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 14.11.2021.
//

import UIKit

public extension CGSize {
    static func *(lhs: CGSize, rhs: CGFloat) -> CGSize {
        return CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
    }
    
    static func +(lhs: CGSize, rhs: (x: CGFloat, y: CGFloat)) -> CGPoint {
        return CGPoint(
            x: lhs.width + rhs.x,
            y: lhs.height + rhs.y
        )
    }
}

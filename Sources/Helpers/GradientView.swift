//
//  File.swift
//  
//
//  Created by Hasancan Akgunduz on 15.12.2021.
//

import Foundation

public final class GradientView: UIView {
    override class var layerClass: AnyClass { return CAGradientLayer.self }

    var colors: (start: UIColor, end: UIColor)? {
        didSet { updateLayer() }
    }

    private func updateLayer() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = colors.map { [$0.start.cgColor, $0.end.cgColor] }
    }
}

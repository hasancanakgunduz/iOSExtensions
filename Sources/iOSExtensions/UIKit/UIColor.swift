//
//  File.swift
//  
//
//  Created by HASANCAN AKGUNDUZ on 8.05.2022.
//

import UIKit

extension UIColor {
  convenience init(light: UIColor, dark: UIColor) {
    self.init { traitCollection in
      switch traitCollection.userInterfaceStyle {
      case .light, .unspecified:
        return light
      case .dark:
        return dark
      @unknown default:
        return light
      }
    }
  }
}

extension UIColor {
  static let defaultBackground = UIColor(light: .blue, dark: .red)
}

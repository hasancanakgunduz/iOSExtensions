//
//  File.swift
//  
//
//  Created by HASANCAN AKGUNDUZ on 8.05.2022.
//

import SwiftUI

public extension Color {
  init(light: Color, dark: Color) {
    self.init(UIColor(light: UIColor(light), dark: UIColor(dark)))
  }
}

public extension Color {
  static let defaultBackground = Color(light: .blue, dark: .red)
}

//
//  Colors.swift
//  
//
//  Created by kwanghyun won on 2021/08/31.
//

import SwiftUI

extension Color {
  public static func hex(_ hex: UInt) -> Self {
    Self(
      red: Double((hex & 0xff0000) >> 16) / 255,
      green: Double((hex & 0x00ff00) >> 8) / 255,
      blue: Double(hex & 0x0000ff) / 255,
      opacity: 1
    )
  }
  
  public static func hex(_ hex: UInt, opacity: Double = 1) -> Self {
    Self(
      red: Double((hex & 0xff0000) >> 16) / 255,
      green: Double((hex & 0x00ff00) >> 8) / 255,
      blue: Double(hex & 0x0000ff) / 255,
      opacity: opacity
    )
  }
}

extension Color {
  
  public static let appTemplate = AppTemplate()
  
  public struct AppTemplate {
    public let primary = Color.hex(0xFB8989)
    public let navy = Color.hex(0x000060)
    
    public let text = Text()
    
    public struct Text {
      public let primary = Color.primary
      public let secondary = Color.hex(0x000000, opacity: 0.36)
      public let tertiary = Color.hex(0xF3F4F8)
    }
  }
}

#if canImport(UIKit)
import UIKit

public extension UIColor {
  static let colorPink = UIColor(red: 255/255, green: 44/255, blue: 84/255, alpha: 1)
  static let colorPink50 = UIColor(red: 255/255, green: 44/255, blue: 84/255, alpha: 0.5)
  static let colorBlack = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
  static let colorBlack20 = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.2)
  static let colorBlack40 = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.4)
  static let colorBlack60 = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.6)
  static let colorDarkgrey = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1)
  static let colorDarkgrey50 = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 0.5)
  static let colorGrey = UIColor(red: 188/255, green: 188/255, blue: 188/255, alpha: 1)
  static let colorDarkwhite = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
  static let colorBrightgrey = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
  static let colorWhite = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
  static let colorWhite20 = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.2)
  static let colorWhite40 = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.4)
  static var random: UIColor {
    let max = CGFloat(UInt32.max)
    let red = CGFloat(arc4random()) / max
    let green = CGFloat(arc4random()) / max
    let blue = CGFloat(arc4random()) / max
    
    return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
  }
}
#endif

//
//  UIColor+ITDAvatarPlaceholder.swift
//  Pods
//
//  Created by Igor Kurylenko on 4/4/16.
//
//

import UIKit

private func hsb(_ h: Int, _ s: Int, _ b: Int) -> UIColor {
    return UIColor(hue: CGFloat(h), saturation: CGFloat(s), brightness: CGFloat(b), alpha: 1.0)
}

private let colors = [
    UIColor.flatBlueDark,
    UIColor.flatGreenDark,
    UIColor.flatMagentaDark,
    UIColor.flatYellowDark
]

extension UIColor {
    static var flatBlueDark: UIColor {
        return hsb(224, 56, 51)
    }
    
    static var flatGreenDark: UIColor {
        return hsb(224, 56, 51)
    }
    
    static var flatMagentaDark: UIColor {
        return hsb(282, 61, 68)
    }
    
    static var flatYellowDark: UIColor {
        return hsb(40, 100, 100)
    }
    
    public static func forAvatarPlaceholderBackground(userFullName name: String) -> UIColor {
        return colors[name.hashValue % colors.count]
    }
    
    static func fromInt(_ value: Int) -> UIColor {
        return UIColor.fromUInt(UInt(abs(value)))
    }
    
    static func fromUInt(_ value: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((value & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((value & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(value & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    static func contrastingBlackOrWhiteColor(on bgColor: UIColor, isFlat: Bool, alpha: CGFloat = 1.0) -> UIColor {
        var red = CGFloat(0.0)
        var green = CGFloat(0.0)
        var blue = CGFloat(0.0)
        var alpha = CGFloat(0.0)
        
        bgColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        if alpha == 0 {
            return UIColor.clear
        }
        
        red *= 0.2126
        green *= 0.7152
        blue *= 0.0722
        
        let luminance = red + green + blue
        
        
        return (luminance > 0.6)
            ? UIColor(hue: 0, saturation: 0, brightness: 15, alpha: alpha)
            : UIColor(hue: 192, saturation: 2, brightness: 95, alpha: alpha)
    }
}

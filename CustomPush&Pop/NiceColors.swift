//
//  NiceColors.swift
//  CustomPush&Pop
//
//  Created by David on 01/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    class func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    static let niceBlue = rgb(r: 22, g: 164, b: 250)
    static let darkBlue = rgb(r: 0, g: 113, b: 188)
    static let niceGreen = rgb(r: 67, g: 220, b: 145)
    
}

//
//  NavController_animation.swift
//  CustomPush&Pop
//
//  Created by David on 01/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    
    func addTransition() {
        
        let transition = CATransition()
        transition.duration = 1
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionFade
        transition.subtype = kCATransitionFromBottom
        self.view.layer.add(transition, forKey: nil)
        
    }
}

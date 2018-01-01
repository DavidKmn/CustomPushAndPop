//
//  DummyController.swift
//  CustomPush&Pop
//
//  Created by David on 01/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class DummyController: UIViewController {
    
    lazy var navigateBackButton: UIButton = {
        let but = UIButton(type: .system)
        but.setTitle("Navigate Back", for: .normal)
        but.setTitleColor(.white, for: .normal)
        but.backgroundColor = .niceBlue
        but.clipsToBounds = true
        but.layer.cornerRadius = 2
        but.translatesAutoresizingMaskIntoConstraints = false
        but.addTarget(self, action: #selector(navigateSomewhere), for: .touchUpInside)
        return but
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .niceGreen
        
        view.addSubview(navigateBackButton)
        
        navigateBackButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        navigateBackButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc private func navigateSomewhere() {
        print("Navigating Back")
        navigationController?.addTransition()
        navigationController?.popViewController(animated: false)
    }
}

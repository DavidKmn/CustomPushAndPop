//
//  DummyController2.swift
//  CustomPush&Pop
//
//  Created by David on 01/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class DummyController2: UIViewController {
    
    lazy var dismissButton: UIButton = {
        let but = UIButton(type: .system)
        but.setTitle("Dismiss", for: .normal)
        but.setTitleColor(.white, for: .normal)
        but.backgroundColor = .darkBlue
        but.clipsToBounds = true
        but.layer.cornerRadius = 2
        but.translatesAutoresizingMaskIntoConstraints = false
        but.addTarget(self, action: #selector(dismissButtonTapped), for: .touchUpInside)
        return but
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .niceGreen
        
        view.addSubview(dismissButton)
        
        dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc private func dismissButtonTapped() {
        print("Dismissing")
        dismiss(animated: true, completion: nil)
    }
}

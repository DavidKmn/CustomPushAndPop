//
//  ViewController.swift
//  CustomPush&Pop
//
//  Created by David on 01/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var navigateButton: UIButton = {
        let but = greenButtonGenerator(withButtonTitle: "Navigate")
        but.addTarget(self, action: #selector(navigateSomewhere), for: .touchUpInside)
        return but
    }()
    
    lazy var presentWithAFlipButton: UIButton = {
        let but = greenButtonGenerator(withButtonTitle: "Present With Flip")
        but.addTarget(self, action: #selector(presentSomethingWithAFlip), for: .touchUpInside)
        return but
    }()
    
    lazy var presentWitACurlButton: UIButton = {
        let but = greenButtonGenerator(withButtonTitle: "Present with Curl")
        but.addTarget(self, action: #selector(presentSomethingWithACurl), for: .touchUpInside)
        return but
    }()
    
    private func greenButtonGenerator(withButtonTitle title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 2
        button.backgroundColor = .niceGreen
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.niceBlue
        
        view.addSubview(navigateButton)
        
        navigateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        navigateButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(presentWithAFlipButton)
        
        presentWithAFlipButton.bottomAnchor.constraint(equalTo: navigateButton.topAnchor, constant: -30).isActive = true
        presentWithAFlipButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        view.addSubview(presentWitACurlButton)
        
        presentWitACurlButton.topAnchor.constraint(equalTo: navigateButton.bottomAnchor, constant: 30).isActive = true
        presentWitACurlButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc private func navigateSomewhere() {
        print("Navigating")
        navigationController?.addTransition()
        navigationController?.pushViewController(DummyController(), animated: false)
    }
    
    @objc private func presentSomethingWithAFlip() {
        print("Presenting with a Flip")
        let dummyController = DummyController2()
        dummyController.modalTransitionStyle = .flipHorizontal
        present(dummyController, animated: true, completion: nil)
    }
    
    @objc private func presentSomethingWithACurl() {
        print("Presenting with a Curl")
        let dummyController = DummyController2()
        dummyController.modalTransitionStyle = .partialCurl
        present(dummyController, animated: true, completion: nil)
    }
}


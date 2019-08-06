//
//  ViewController.swift
//  SimpleChainedAnimation
//
//  Created by Antonio Posabella on 06/08/2019.
//  Copyright © 2019 AntonioPosabella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   private let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.numberOfLines = 0
        titleLabel.text = "Lorem ipsum dolor sit amet"
        titleLabel.font = UIFont(name: "Futura", size: 34)
        return titleLabel
    }()
    
   private let bodyLabel: UILabel = {
        let bodyLabel = UILabel()
        bodyLabel.numberOfLines = 0
        bodyLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        return bodyLabel
    }()
    
    
    fileprivate func setupStackView() {
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, bodyLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        view.addSubview(stackView)
        // enable autolayout
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStackView()
    }
}


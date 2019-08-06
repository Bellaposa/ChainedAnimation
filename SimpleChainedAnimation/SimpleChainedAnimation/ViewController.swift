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
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapAnimations)))
    }
    
    @objc fileprivate func handleTapAnimations() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.titleLabel.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.titleLabel.alpha = 0
                self.titleLabel.transform = self.titleLabel.transform.translatedBy(x: 0, y: -200)
            })
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.bodyLabel.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.bodyLabel.alpha = 0
                self.bodyLabel.transform = self.bodyLabel.transform.translatedBy(x: 0, y: -200)
            })
        }
    }
}


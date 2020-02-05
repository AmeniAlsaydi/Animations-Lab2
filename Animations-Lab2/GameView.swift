//
//  GameView.swift
//  Animations-Lab2
//
//  Created by Amy Alsaydi on 2/5/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class GameView: UIView {
    
    private lazy var linear: UIButton = {
        let button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        return button
    }()

    private lazy var easeIn: UIButton = {
        let button = UIButton()
        button.setTitle("EaseIn", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        return button
    }()
    
    private lazy var easeOut: UIButton = {
        let button = UIButton()
        button.setTitle("EaseOut", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        return button
    }()
    
    private lazy var easeInOut: UIButton = {
        let button = UIButton()
        button.setTitle("EaseInEaseOut", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        return button
    }()
    
    private lazy var buttonStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [linear, easeIn, easeOut, easeInOut])
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .horizontal
        stackView.spacing = 5
        return stackView
    }()
    
    private lazy var image1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beach-ball")
        return image
    }()
    
    // create custom view
    // only called if uses main story board
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    // called if programmatically
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
         commonInit()
    }
    
    private func commonInit() {
        constrainStackView()
        // constrainImage1()
    }
    
    private func constrainStackView() {
        addSubview(buttonStack)
        // buttonStack = UIStackView(arrangedSubviews: [linear, easeIn, easeOut, easeInOut])
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        buttonStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
        buttonStack.leadingAnchor.constraint(equalTo: leadingAnchor),
        buttonStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        buttonStack.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1)
        ])
        
    }
    
    
    private func constrainImage1() {
        addSubview(image1)
        image1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image1.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            image1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            image1.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
            image1.heightAnchor.constraint(equalTo:image1.widthAnchor)
        ])
        
    }
    
    
}

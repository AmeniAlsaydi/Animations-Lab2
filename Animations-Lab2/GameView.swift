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
    
    private lazy var image2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beach-ball")
        return image
    }()
    
    private lazy var image3: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beach-ball")
        return image
    }()
    
    private lazy var image4: UIImageView = {
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
        constrainImage1()
        constrainImage2()
        constrainImage3()
        constrainImage4()
    }
    
    private func constrainStackView() {
        addSubview(buttonStack)
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
            image1.topAnchor.constraint(equalTo: buttonStack.bottomAnchor, constant: 20),
            image1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            image1.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            image1.heightAnchor.constraint(equalTo:image1.widthAnchor)
        ])
    }
    
    private func constrainImage2() {
        addSubview(image2)
        image2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image2.topAnchor.constraint(equalTo: buttonStack.bottomAnchor, constant: 20),
            image2.leadingAnchor.constraint(equalTo: image1.trailingAnchor, constant: 60),
            image2.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            image2.heightAnchor.constraint(equalTo:image2.widthAnchor)
        ])
    }
    private func constrainImage3() {
        addSubview(image3)
        image3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image3.topAnchor.constraint(equalTo: buttonStack.bottomAnchor, constant: 20),
            image3.leadingAnchor.constraint(equalTo: image2.trailingAnchor, constant: 60),
            image3.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            image3.heightAnchor.constraint(equalTo:image3.widthAnchor)
        ])
    }
    
    private func constrainImage4() {
        addSubview(image4)
        image4.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image4.topAnchor.constraint(equalTo: buttonStack.bottomAnchor, constant: 20),
            image4.leadingAnchor.constraint(equalTo: image3.trailingAnchor, constant: 60),
            image4.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            image4.heightAnchor.constraint(equalTo:image4.widthAnchor)
        ])
    }
}

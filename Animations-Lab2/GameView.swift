//
//  GameView.swift
//  Animations-Lab2
//
//  Created by Amy Alsaydi on 2/5/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class GameView: UIView {
    
    public lazy var animateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animate", for: .normal)
        return button
    }()
    
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        return button
    }()
    
    public lazy var linear: UIButton = {
        let button = UIButton()
        button.tag = 0
        button.setTitle("Linear", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        return button
    }()

    public lazy var easeIn: UIButton = {
        let button = UIButton()
        button.tag = 1
        button.setTitle("EaseIn", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        return button
    }()
    
    public lazy var easeOut: UIButton = {
        let button = UIButton()
        button.tag = 2
        button.setTitle("EaseOut", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        return button
    }()
    
    public lazy var easeInOut: UIButton = {
        let button = UIButton()
        button.tag = 3
        button.setTitle("EaseInEaseOut", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        return button
    }()
    
    private lazy var bottomButtonStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [resetButton, animateButton])
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
    }()
    
    public lazy var optionsButtonStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [linear, easeIn, easeOut, easeInOut])
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .horizontal
        stackView.spacing = 5
        return stackView
    }()
    
    public lazy var image1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beach-ball")
        return image
    }()
    
    public lazy var image2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beach-ball")
        return image
    }()
    
    public lazy var image3: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beach-ball")
        return image
    }()
    
    public lazy var image4: UIImageView = {
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
        constrainStackView1()
        constrainStackView2()
        constrainImage1()
        constrainImage2()
        constrainImage3()
        constrainImage4()
    }
    
    private func constrainStackView1() {
        addSubview(optionsButtonStack)
        optionsButtonStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        optionsButtonStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
        optionsButtonStack.leadingAnchor.constraint(equalTo: leadingAnchor),
        optionsButtonStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        optionsButtonStack.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1)
        ])
        
    }
    
    private func constrainStackView2() {
        addSubview(bottomButtonStack)
        bottomButtonStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        bottomButtonStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 20),
        bottomButtonStack.leadingAnchor.constraint(equalTo: leadingAnchor),
        bottomButtonStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        bottomButtonStack.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2)
        ])
        
    }
    
    private func constrainImage1() {
        addSubview(image1)
        image1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image1.topAnchor.constraint(equalTo: optionsButtonStack.bottomAnchor, constant: 20),
            image1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            image1.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            image1.heightAnchor.constraint(equalTo:image1.widthAnchor)
        ])
    }
    
    private func constrainImage2() {
        addSubview(image2)
        image2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image2.topAnchor.constraint(equalTo: optionsButtonStack.bottomAnchor, constant: 20),
            image2.leadingAnchor.constraint(equalTo: image1.trailingAnchor, constant: 60),
            image2.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            image2.heightAnchor.constraint(equalTo:image2.widthAnchor)
        ])
    }
    private func constrainImage3() {
        addSubview(image3)
        image3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image3.topAnchor.constraint(equalTo: optionsButtonStack.bottomAnchor, constant: 20),
            image3.leadingAnchor.constraint(equalTo: image2.trailingAnchor, constant: 60),
            image3.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            image3.heightAnchor.constraint(equalTo:image3.widthAnchor)
        ])
    }
    
    private func constrainImage4() {
        addSubview(image4)
        image4.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image4.topAnchor.constraint(equalTo: optionsButtonStack.bottomAnchor, constant: 20),
            image4.leadingAnchor.constraint(equalTo: image3.trailingAnchor, constant: 60),
            image4.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            image4.heightAnchor.constraint(equalTo:image4.widthAnchor)
        ])
    }
}

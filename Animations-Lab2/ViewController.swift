//
//  ViewController.swift
//  Animations-Lab2
//
//  Created by Amy Alsaydi on 2/5/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let gameView = GameView()
    private var ballsYConstarints: NSLayoutConstraint! // all the balls have the same top constraint
    private var ballsTopConstraint: NSLayoutConstraint!
    
    override func loadView() {
        view = gameView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        addTargets()
        
    }
    
    private func addTargets() {
        gameView.linear.addTarget(self, action: #selector(hideBall(_:)), for: .touchUpInside)
        gameView.easeIn.addTarget(self, action: #selector(hideBall(_:)), for: .touchUpInside)
        gameView.easeOut.addTarget(self, action: #selector(hideBall(_:)), for: .touchUpInside)
        gameView.easeInOut.addTarget(self, action: #selector(hideBall(_:)), for: .touchUpInside)
        gameView.animateButton.addTarget(self, action: #selector(animate(_:)), for: .touchUpInside)
        gameView.resetButton.addTarget(self, action: #selector(reset(_:)), for: .touchUpInside)
    }
    
    @objc private func hideBall(_ sender: UIButton) {
        
        var ballView = gameView.image1
        
        switch sender.tag {
        case 0:
            ballView = gameView.image1
        case 1:
            ballView = gameView.image2
        case 2:
            ballView =  gameView.image3
        case 3:
            ballView =  gameView.image4
        default:
            print("default")
        }
        
        if ballView.isHidden {
            ballView.isHidden = false
        } else {
            ballView.isHidden = true
        }
        
    }
    
    @objc private func animate(_ sender: UIButton) {
        
        ballsYConstarints = gameView.image1.constraints[0] // top?
        ballsTopConstraint = gameView.image1.constraints[0]
        ballsTopConstraint.constant += 250
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveLinear, animations: {
            self.gameView.image1.transform = CGAffineTransform(translationX: 0.0, y: self.ballsTopConstraint.constant)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseIn, animations: {
            self.gameView.image2.transform = CGAffineTransform(translationX: 0.0, y: self.ballsTopConstraint.constant)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseOut, animations: {
            self.gameView.image3.transform = CGAffineTransform(translationX: 0.0, y: self.ballsTopConstraint.constant)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseInOut, animations: {
            self.gameView.image4.transform = CGAffineTransform(translationX: 0.0, y: self.ballsTopConstraint.constant)
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    @objc func reset(_ sender: UIButton) {
        let originalY = ballsTopConstraint.constant - ballsYConstarints.constant
     
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveLinear, animations: {
            self.gameView.image1.transform = CGAffineTransform(translationX: 0.0, y: originalY)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseIn, animations: {
            self.gameView.image2.transform = CGAffineTransform(translationX: 0.0, y: originalY)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseOut, animations: {
            self.gameView.image3.transform = CGAffineTransform(translationX: 0.0, y: originalY)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseInOut, animations: {
            self.gameView.image4.transform = CGAffineTransform(translationX: 0.0, y: originalY)
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}

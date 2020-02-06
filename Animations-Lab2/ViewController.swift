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
    private var ball1YConstarints: NSLayoutConstraint? // all the balls have the same top constraint
    
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
        
        ball1YConstarints = gameView.image1.constraints[0]
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveLinear, animations: {
            //self.ball1YConstarints?.constant += 100
            self.gameView.image1.transform = CGAffineTransform(translationX: 0.0, y: 550.0)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseIn, animations: {
            //self.ball1YConstarints?.constant += 100
            self.gameView.image2.transform = CGAffineTransform(translationX: 0.0, y: 550.0)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseOut, animations: {
            //self.ball1YConstarints?.constant += 100
            self.gameView.image3.transform = CGAffineTransform(translationX: 0.0, y: 550.0)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseInOut, animations: {
            //self.ball1YConstarints?.constant += 100
            self.gameView.image4.transform = CGAffineTransform(translationX: 0.0, y: 550.0)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }
    
}

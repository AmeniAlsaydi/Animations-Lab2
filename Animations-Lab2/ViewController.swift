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
        gameView.linear.addTarget(self, action: #selector(moveBall(_:)), for: .touchUpInside)
    }
    
    @objc private func moveBall(_ sender: UIButton) {
        print("linear")
        
        // switch on tag- and set a varibale to type -> animationOption then pass into options below
        
        ball1YConstarints = gameView.image1.constraints[0]
        
        UIView.animate(withDuration: 4.0, delay: 0.0, options: .curveLinear, animations: {
            //self.ball1YConstarints?.constant += 100
            self.gameView.image1.transform = CGAffineTransform(translationX: 0.0, y: 400.0)
            self.view.layoutIfNeeded()
        }, completion: nil)
    }


}

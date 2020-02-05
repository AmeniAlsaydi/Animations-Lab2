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
    
    override func loadView() {
        view = gameView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .magenta

        // Do any additional setup after loading the view.
    }
    


}

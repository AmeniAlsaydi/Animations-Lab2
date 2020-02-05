//
//  GameView.swift
//  Animations-Lab2
//
//  Created by Amy Alsaydi on 2/5/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class GameView: UIView {

    
    // create custom view
    // only called if uses main story board
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
    }
    
    // called if programmatically
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
         commonInit()
    }
    
    private func commonInit() {
        print("Game View")
    }
}

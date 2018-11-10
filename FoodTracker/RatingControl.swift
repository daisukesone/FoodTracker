//
//  RatingControl.swift
//  FoodTracker
//
//  Created by 曽根大輔 on 2018/11/10.
//  Copyright © 2018 曽根大輔. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //mark: initialization
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        setUpBottens()
    }
    
    required init(coder: NSCoder) {
        super.init(coder:coder)
        setUpBottens()
    }
    
    //MARK: Button Actions
    @objc funk rationgButtonTrapped(button: UIbutton) {
          prin
    }
    
    //MARK; Private Methods
    private func setUpBottens(){
        //create the Botton
        let button = UIButton()
        button.backgroundColor = UIColor.red
        //add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive  = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
       
        //setup The Button Action
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        //add the button to the stack
        addArrangedSubview(button)
        
    }
}

//
//  RatingControl.swift
//  FoodTracker
//
//  Created by 曽根大輔 on 2018/11/10.
//  Copyright © 2018 曽根大輔. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    //mark: properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    

    //mark: initialization
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        setUpButtens()
    }
    
    required init(coder: NSCoder) {
        super.init(coder:coder)
        setUpButtens()
    }
    
    //MARK: Button Actions
    @objc func rationgButtonTapped(button: UIButton) {
        print("Button pressed👍")
    }
    
    //MARK; Private Methods
    private func setUpButtens(){
        for _ in 0..<5{
        //create the Botton
        let button = UIButton()
        button.backgroundColor = UIColor.red
        //add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive  = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
       
        //setup The Button Action
        button.addTarget(self, action: #selector(RatingControl.rationgButtonTapped(button:)), for: .touchUpInside)
        
        //add the button to the stack
        addArrangedSubview(button)
        
        }
        
    
    }
}

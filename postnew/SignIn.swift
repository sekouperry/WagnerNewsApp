//
//  SignIn.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/8/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class SignIn: UIView {
    
    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).CGColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSizeMake(0.0, 0.2)
        
        
        
    }

    
}

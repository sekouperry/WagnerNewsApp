//
//  collectiveViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/29/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class collectiveViewController: UIViewController {

    
    @IBOutlet weak var wagcollect: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wagcollect.layer.cornerRadius = wagcollect.frame.size.width/2
        wagcollect.clipsToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

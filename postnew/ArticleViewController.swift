//
//  ArticleViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/29/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {

    
    @IBOutlet weak var coverimage: UIImageView!
    
    @IBOutlet weak var cover1: UIImageView!
    
    @IBOutlet weak var cover2: UIImageView!
    
    @IBOutlet weak var cover3: UIImageView!
    
    @IBOutlet weak var cover4: UIImageView!
    
    
    @IBOutlet weak var cover5: UIImageView!
    
    @IBOutlet weak var title1: UILabel!
    
    @IBOutlet weak var title2: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cover1.layer.cornerRadius = cover1.frame.size.width/2
        cover1.clipsToBounds = true
        
        cover2.layer.cornerRadius = cover2.frame.size.width/2
        cover2.clipsToBounds = true
        
        cover3.layer.cornerRadius = cover3.frame.size.width/2
        cover3.clipsToBounds = true
        
        cover4.layer.cornerRadius = cover4.frame.size.width/2
        cover4.clipsToBounds = true
        
        cover5.layer.cornerRadius = cover5.frame.size.width/2
        cover5.clipsToBounds = true
    
    
    }
    

   }

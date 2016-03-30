//
//  curlpageViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/29/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class curlpageViewController: UIViewController {

    @IBOutlet weak var imagetop: UIImageView!
    
    @IBOutlet weak var title1: UILabel!
    
    @IBOutlet weak var title2: UILabel!
    
    @IBOutlet weak var textfield: UITextView!
    
    
    @IBOutlet weak var profilepic: UIImageView!
    
    @IBOutlet weak var namepic: UILabel!
    
    
    
    var pageindex: Int!
    var title1index: String!
    var title2index: String!
    var textfieldindex:String!
    var imagefile:String!
    var imagefile2:String!
    var textname:String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilepic.layer.cornerRadius = profilepic.frame.size.width/2
        profilepic.clipsToBounds = true
        
        self.imagetop.image = UIImage(named: imagefile)
        self.title1.text = self.title1index
        self.title2.text = self.title2index
        self.textfield.text = self.textfieldindex
        self.profilepic.image = UIImage(named: imagefile2)
        self.namepic.text = self.textname
        
        
        
        
        
        
    }

    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}

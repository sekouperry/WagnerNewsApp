//
//  SportsViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/23/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class SportsViewController: UIViewController {

    @IBOutlet weak var imagetop2: UIImageView!
    
    @IBOutlet weak var title12: UILabel!
    
    @IBOutlet weak var title22: UILabel!
    
    @IBOutlet weak var textfield2: UITextView!
    
    
    @IBOutlet weak var profilepic2: UIImageView!
    
    @IBOutlet weak var namepic2: UILabel!
    
    
    
    var page2index: Int!
    var title12index: String!
    var title22index: String!
    var textfield2index:String!
    var imagefile2:String!
    var imageprofile:String!
    var textname:String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profilepic2.layer.cornerRadius = profilepic2.frame.size.width/2
        profilepic2.clipsToBounds = true
        
        self.imagetop2.image = UIImage(named: imagefile2)
        self.title12.text = self.title12index
        self.title22.text = self.title22index
        self.textfield2.text = self.textfield2index
        self.profilepic2.image = UIImage(named: imageprofile)
        self.namepic2.text = self.textname
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

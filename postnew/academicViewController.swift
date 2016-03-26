//
//  academicViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/23/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class academicViewController: UIViewController {
    
    @IBOutlet weak var imagetop3: UIImageView!
    
    @IBOutlet weak var title13: UILabel!
    
    @IBOutlet weak var title23: UILabel!
    
    @IBOutlet weak var textfield3: UITextView!
    
    
    @IBOutlet weak var profilepic3: UIImageView!
    
    @IBOutlet weak var namepic3: UILabel!
    
    var page3index: Int!
    var title13index: String!
    var title23index: String!
    var textfield3index:String!
    var imageprofile3:String!
    var imagefile23:String!
    var textname3:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        profilepic3.layer.cornerRadius = profilepic3.frame.size.width/2
        profilepic3.clipsToBounds = true
        
        self.imagetop3.image = UIImage(named: imagefile23)
        self.title13.text = self.title13index
        self.title23.text = self.title23index
        self.textfield3.text = self.textfield3index
        self.profilepic3.image = UIImage(named: imageprofile3)
        self.namepic3.text = self.textname3

       

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

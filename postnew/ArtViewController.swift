//
//  ArtViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/23/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class ArtViewController: UIViewController {
    
    @IBOutlet weak var imagetop4: UIImageView!
    
    @IBOutlet weak var title14: UILabel!
    
    @IBOutlet weak var title24: UILabel!
    


    var pageindex: Int!
    var title14index: String!
    var title24index: String!
    var imagefile4:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        self.imagetop4.image = UIImage(named: imagefile4)
        self.title14.text = self.title14index
        self.title24.text = self.title24index
       
        
       


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}

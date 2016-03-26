//
//  postcellTableViewCell.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/21/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit
import Alamofire

class postcellTableViewCell: UITableViewCell {

    @IBOutlet weak var profilepic: UIImageView!
    @IBOutlet weak var Article: UITextView!
    @IBOutlet weak var username:UILabel!
    
    
    var post: Post!
    var request: Request?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
     profilepic.layer.cornerRadius = profilepic.frame.size.width / 2
        
        profilepic.clipsToBounds = true
        
        
    }

    func configureCell(post: Post) {
        self.post = post
        
        
        
            self.Article.text = post.postDescription
       
        
    
    }
    }
    


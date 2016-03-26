//
//  Services.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/9/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import Foundation
import Firebase

let URL_BASE = "https://postnew.firebaseio.com"

class Services {
    static let ds = Services()
    
    private var _REF_BASE = Firebase(url: "\(URL_BASE)")
    
    private var _REF_POSTS = Firebase(url: "\(URL_BASE)/posts")
    
    private var _REF_USERS = Firebase(url: "\(URL_BASE)/users")
    
    var REF_BASE: Firebase {
        return _REF_BASE
    }
    
    var REF_POSTS: Firebase {
        return _REF_POSTS
    }
    
    var REF_USERS: Firebase {
    return _REF_USERS
    }
    
    func createFirebaseuser(uid: String, user: Dictionary<String, String>) {
        REF_USERS.childByAppendingPath(uid).setValue(user)
    }
}

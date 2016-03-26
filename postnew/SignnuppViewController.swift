//
//  SignnuppViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/12/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class SignnuppViewController: UIViewController {

    
    @IBOutlet weak var Email2: Textuser!
    
    @IBOutlet weak var Password2: Textuser!
    
    @IBOutlet weak var RetypePassword: Textuser!
    
    @IBOutlet weak var SignUpp: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.SignUpp.layer.cornerRadius = 7
        SignUpp.layer.cornerRadius = 7

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if NSUserDefaults.standardUserDefaults().valueForKey(KEY_UID) != nil {
        self.performSegueWithIdentifier(SEGUE_SIGNME_UP, sender: nil)
            
            
        }
        
        
    }


    @IBAction func SignUp3(sender: AnyObject) {
        if let email = Email2.text where email != "" , let password = Password2.text where password != "", let retypepassword2 = RetypePassword.text where retypepassword2 != "" {
            Services.ds.REF_BASE.authUser(email, password: retypepassword2, withCompletionBlock: { error, authData in
                
                if error != nil {
                    print(error)
                    if error.code == STATUS_ACCOUNT_NONEXIST {
                        Services.ds.REF_BASE.createUser(email, password: retypepassword2, withValueCompletionBlock: { error, result in
                            if error != nil {
                                self.showErrorAlert("Could not sign you up,", msg: "Please check username or password")
                            } else {
                                NSUserDefaults.standardUserDefaults().setValue(result[KEY_UID], forKey: KEY_UID)
                               
                                
                                Services.ds.REF_BASE.authUser(email, password: retypepassword2, withCompletionBlock: {
                                    err, authData in
                                    
                                    let user = ["provider": authData.provider!, "blah":"emailtest"]
                                    Services.ds.createFirebaseuser(authData.uid, user: user)
                                    
                                })
                                
                                self.performSegueWithIdentifier(SEGUE_SIGNME_UP, sender: nil)
                            }
                        })
                        
                    }
                    
                }
            })
            
        }else {
            showErrorAlert("Email and Password Required", msg: "You must have an email and a password")
        }
    }
    

    func showErrorAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .Alert)
        let action = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
}

        
        

    
        

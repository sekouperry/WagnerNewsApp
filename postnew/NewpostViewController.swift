//
//  NewpostViewController.swift
//  postnew
//
//  Created by Kenneth Okereke on 3/9/16.
//  Copyright © 2016 Kenneth Okereke. All rights reserved.
//

import UIKit

class NewpostViewController: UIViewController {
    
    @IBOutlet weak var SignINN: UIButton!
    
        @IBOutlet weak var Email: Textuser!
    
    @IBOutlet weak var password: Textuser!

   
    @IBOutlet weak var Signup2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.SignINN.layer.cornerRadius = 7
        SignINN.layer.cornerRadius = 7
        
        self.Signup2.layer.cornerRadius = 7
        Signup2.layer.cornerRadius = 7

        
        
        
        

        
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        //if NSUserDefaults.standardUserDefaults().valueForKey(KEY_UID) != nil {
           //self.performSegueWithIdentifier(SEGUE_LOGGIN_IN, sender: nil)
            
            
        //}

    
    }
    
    @IBAction func SignButton(sender: AnyObject) {
        if let email = Email.text where email != "" , let password = password.text where password != "" {
            Services.ds.REF_BASE.authUser(email, password: password, withCompletionBlock: { error, authData in
                
                if error != nil {
                    print(error)
                    if error.code == STATUS_ACCOUNT_NONEXIST {
                        Services.ds.REF_BASE.createUser(email, password: password, withValueCompletionBlock: { error, autoData in
                            if error != nil {
                                self.showErrorAlert("Could not sign you up,", msg: "Please check username or password")
                            } else {
                                NSUserDefaults.standardUserDefaults().setValue(autoData[KEY_UID], forKey: KEY_UID)
                                
                                
                                Services.ds.REF_BASE.authUser(email, password: password, withCompletionBlock: {
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






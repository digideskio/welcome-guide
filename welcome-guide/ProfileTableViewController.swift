//
//  ProfileTableViewController.swift
//  
//
//  Created by Philip Heinser on 28.06.15.
//
//

import UIKit

class ProfileTableViewController: UITableViewController, PFSignUpViewControllerDelegate {

    @IBOutlet weak var loginButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        loginButton.enabled = (PFUser.currentUser() != nil)
    }
    
    @IBAction func login(sender: AnyObject) {
        
        let singupVC = PFSignUpViewController()
        singupVC.delegate = self
        singupVC.emailAsUsername = true
        
        self.presentViewController(singupVC, animated: true) { () -> Void in
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func signUpViewController(signUpController: PFSignUpViewController, didSignUpUser user: PFUser) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

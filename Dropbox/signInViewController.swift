//
//  signInViewController.swift
//  Dropbox
//
//  Created by Margaret Bignell on 9/17/15.
//  Copyright © 2015 maggled. All rights reserved.
//

import UIKit

class signInViewController: UIViewController {

    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.hidden = true
        emailAddress.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onAddingPassword(sender: AnyObject) {
        if passwordField.text!.characters.count > 3 {
            signInButton.hidden = false
            print("password field entered worked")
        }
        else {
            signInButton.hidden = true
            print("it did not work")
        }
    }
    @IBAction func onButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
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

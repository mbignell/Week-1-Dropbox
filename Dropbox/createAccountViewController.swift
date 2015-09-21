//
//  createAccountViewController.swift
//  Dropbox
//
//  Created by Margaret Bignell on 9/17/15.
//  Copyright © 2015 maggled. All rights reserved.
//

import UIKit

class createAccountViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var strength1: UIImageView!
    @IBOutlet weak var strength2: UIImageView!
    @IBOutlet weak var strength3: UIImageView!
    @IBOutlet weak var strength4: UIImageView!
    @IBAction func onButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameField.becomeFirstResponder()
        createButton.hidden = true
        strength1.hidden = true
        strength2.hidden = true
        strength3.hidden = true
        strength4.hidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPasswordChange(sender: AnyObject) {
        if passwordField.text!.characters.count > 0 {
            print("password field entered worked")
            strength1.hidden = false
            createButton.hidden = true
            strength3.hidden = true
            strength4.hidden = true
            strength2.hidden = true
        }
        
        if passwordField.text!.characters.count > 3 {
                strength2.hidden = false
            strength3.hidden = true
            strength4.hidden = true
            strength1.hidden = true
                print("got to four characters")
            createButton.hidden = false
        }
        
        if passwordField.text!.characters.count > 6 {
            strength3.hidden = false
            strength4.hidden = true
            strength2.hidden = true
            strength1.hidden = true
            createButton.hidden = false
        }
        
        if passwordField.text!.characters.count > 8 {
            strength4.hidden = false
            strength3.hidden = true
            strength2.hidden = true
            strength1.hidden = true
            createButton.hidden = false
        }
        else {
            print("it did not work")
        }
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

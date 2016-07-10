//
//  ViewController.swift
//  MonsterMapper
//
//  Created by Jorge Vargas on 7/9/16.
//  Copyright © 2016 Monstographers. All rights reserved.
//

import UIKit
import Firebase

class RegistrationViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInButton(sender: AnyObject) {
        authenticate()
    }
    
    @IBAction func registerButton(sender: AnyObject) {
        authenticate()
    }
    
    func authenticate() {
        let email = usernameTextField.text
        let password = passwordTextField.text
        if (email != nil && password != nil) {
            FIRAuth.auth()?.createUserWithEmail(email!, password: password!) { (user, error) in
                if (error != nil) {
                    print("error!")
                } else {
                    print("success")
                }
            }
        }
    }
}


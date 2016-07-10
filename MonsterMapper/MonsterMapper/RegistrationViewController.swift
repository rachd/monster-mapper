//
//  ViewController.swift
//  MonsterMapper
//
//  Created by Jorge Vargas on 7/9/16.
//  Copyright © 2016 Monstographers. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInButton(sender: AnyObject) {
        print("Tapped sign in button.")
        signIn()
    }
    
    @IBAction func registerButton(sender: AnyObject) {
        print("Tapped register button.")
    }
    
    func signIn() {
        let username = usernameTextField.text
        let password = passwordTextField.text
        if (username != nil) {
            print(username!)
        }
        if (password != nil) {
            print(password!)
        }
    }
}


//
//  ViewController.swift
//  LoginApp
//
//  Created by admin2 on 13.04.2021.
//

import UIKit
var forgotu = false
var forgotp = false
var usernameSent = ""
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        forgotu = false
        forgotp = false
        warnLabel.isHidden = true
    }
    @IBAction func screenTaped(_ sender: Any) {
        username.resignFirstResponder()
        password.resignFirstResponder()
    }
    @IBOutlet weak var warnLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func loginTouched(_ sender: Any) {
        warnLabel.isHidden = true
        if let utext = username.text, utext.isEmpty {
            warnLabel.text = "Username is empty!"
            warnLabel.isHidden = false
            
        } else if let ptext = password.text, ptext.isEmpty {
            warnLabel.text = "Password is empty!"
            warnLabel.isHidden = false
        } else {
            usernameSent = String(username.text!)
            performSegue(withIdentifier: "login", sender: nil)
        }
    }
    @IBAction func forgotuTouched(_ sender: Any) {
        forgotu = true
        forgotp = false
    }
    @IBAction func forgotpTouched(_ sender: Any) {
        forgotp = true
        forgotu = false
    }

}


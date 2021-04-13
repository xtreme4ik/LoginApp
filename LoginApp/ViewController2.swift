//
//  ViewController2.swift
//  LoginApp
//
//  Created by admin2 on 13.04.2021.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "Welcome, \(usernameSent)!"

        if forgotp {
            mainLabel.text = "Info about password"
        }
        if forgotu {
            mainLabel.text = "Info about username"
        }
    }
    @IBOutlet weak var mainLabel: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

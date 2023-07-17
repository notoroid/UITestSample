//
//  ViewController.swift
//  LoginTest
//
//  Created by 能登 要 on 2023/07/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBAction func onLogin(_ sender: Any) {
        guard let username = usernameTextField.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) , let password = passwordTextField.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) else {
            messageLabel.text = "ユーザー名パスワードのいずれかが空白です。"
            return
        }
        
        guard username == "user" && password == "passpass" else {
            messageLabel.text = "ユーザー名パスワードが異なります。"
            return
        }
        
        
        performSegue(withIdentifier: "loginedSegue", sender: nil)
    }
}


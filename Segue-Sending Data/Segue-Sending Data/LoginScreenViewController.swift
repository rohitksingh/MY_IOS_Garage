//
//  LoginScreenViewController.swift
//  Segue-Sending Data
//
//  Created by Rohit  on 23/03/20.
//  Copyright © 2020 Rohit . All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {

    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        login()
    }
    
    func login(){
        
        if validate(){
            let user = User()
            print(usernameTextField.text ?? "")
            user.setUsername(username: usernameTextField.text ?? "")
            user.setPassword(password: passwordTextField.text ?? "")
            performSegue(withIdentifier: "openWelcomeScreen", sender: user)
        }
    }
    
    func validate() -> Bool{
        return passwordTextField.text == confirmPassword.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "openWelcomeScreen"{
            let welcomScreen = segue.destination as! WelcomeScreen
            welcomScreen.user = sender as? User
        }
    }

}

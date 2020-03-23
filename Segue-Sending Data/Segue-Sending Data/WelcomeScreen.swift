//
//  WelcomeScreen.swift
//  Segue-Sending Data
//
//  Created by Rohit  on 23/03/20.
//  Copyright © 2020 Rohit . All rights reserved.
//

import UIKit

class WelcomeScreen: UIViewController {

    var user: User!
    
    @IBOutlet weak var detailName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    @IBAction func changeName(_ sender: Any) {
        print("Click")
        performSegue(withIdentifier: "changeUserName", sender: detailName.text)
    }
    
    private func setUpUI(){
        detailName.text = "Welcome "+user.getUserName()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "changeUserName"{
            let loginScreen = segue.destination as! LoginScreenViewController
            loginScreen.changedUserName = sender as! String
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

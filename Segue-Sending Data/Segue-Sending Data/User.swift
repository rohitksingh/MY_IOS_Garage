//
//  User.swift
//  Segue-Sending Data
//
//  Created by Rohit  on 23/03/20.
//  Copyright © 2020 Rohit . All rights reserved.
//

import Foundation

class User{
    
    private var username: String!
    private var password: String!

    func setUsername(username: String){
        self.username = username
    }
    
    func setPassword(password: String){
        self.password = password
    }
    
    func getUserName() -> String{
        return username
    }
    
}

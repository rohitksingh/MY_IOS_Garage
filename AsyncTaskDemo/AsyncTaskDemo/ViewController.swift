//
//  ViewController.swift
//  AsyncTaskDemo
//
//  Created by Rohit  on 12/03/20.
//  Copyright © 2020 Rohit . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "start"
        count()
    }
    
    
    func count(){
        
        DispatchQueue.global(qos: .userInteractive).async {

            for i in 1...10{
                sleep(1)
                DispatchQueue.main.async {
                    self.counter.text = i.description
                }
                
            }
            
        }
        
    }

}


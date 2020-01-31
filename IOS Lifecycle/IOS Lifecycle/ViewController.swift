//
//  ViewController.swift
//  IOS Lifecycle
//
//  Created by Rohit  on 31/01/20.
//  Copyright © 2020 Rohit . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        NSLog("ViewController loadView")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("ViewController loadDidView")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NSLog("ViewController viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NSLog("ViewController viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NSLog("ViewController viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        NSLog("ViewController viewDidDisappear")
    }
    
}


//
//  AppDelegate.swift
//  IOS Lifecycle
//
//  Created by Rohit  on 31/01/20.
//  Copyright © 2020 Rohit . All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        NSLog("AppDelegate didFinishLaunchingWithOptions")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        NSLog("AppDelegate applicationWillResignActive")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        NSLog("AppDelegate applicationDidEnterBackground")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        NSLog("AppDelegate applicationWillEnterForeground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        NSLog("AppDelegate applicationDidBecomeActive")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        NSLog("AppDelegate applicationWillTerminate")
    }

}


//
//  PersistenceAppDelegate.swift
//  MassiveAppDelegate
//
//  Created by Zolt Varga on 01/22/22.
//

import UIKit

class PersistenceAppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print(" 🟠 PersistenceAppDelegate \(#function)")
        
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print(" 🟠 PersistenceAppDelegate \(#function)")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print(" 🟠 PersistenceAppDelegate \(#function)")
    }
}

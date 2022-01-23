//
//  FBCrashlyticsAppDelegate.swift
//  MassiveAppDelegate
//
//  Created by Zolt Varga on 01/22/22.
//

import UIKit

class FBCrashlyticsAppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print(" 🟢 FBCrashlyticsAppDelegate \(#function)")
        
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print(" 🟢 FBCrashlyticsAppDelegate \(#function)")
    }
}

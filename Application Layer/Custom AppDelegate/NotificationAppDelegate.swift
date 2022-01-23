//
//  NotificationAppDelegate.swift
//  MassiveAppDelegate
//
//  Created by Zolt Varga on 01/22/22.
//

import UIKit

class NotificationAppDelegate: NSObject, UIApplicationDelegate {
    
    // 1. Add all needed methods. And make sure that AppDelegate calles them. Don't forget to add NotificationAppDelegate to the list
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print(" 🟣 NotificationAppDelegate \(#function)")
        // 2. Call the 3rd party SDK init method or you Manager / Service Wrapper
        return true
    }
}

// MARK: - Notification
extension NotificationAppDelegate {
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        print(" 🟣 NotificationAppDelegate \(#function)")
        // 3. Send the token to Your Server or to the Service with what you want to send Push Messages
    }
}

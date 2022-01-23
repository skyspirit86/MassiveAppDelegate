//
//  AppDelegate.swift
//  MassiveAppDelegate
//
//  Created by Zolt Varga on 01/22/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // MARK: - Public
    
    var window: UIWindow?
    
    // MARK: - Private
    
    // 1. Create CustomAppDelegate Holder
    private var appDelegates = [UIApplicationDelegate]()
    
    // MARK: - App Lifecycle
    
    // 2a. List of CustomAppDelegates,
    private func configure() {
        appDelegates = [
            PersistenceAppDelegate(),
            FBCrashlyticsAppDelegate(),
            NotificationAppDelegate()
            // 2b. Here you can Add New CustomAppDelegates
        ]
    }
    
    override init() {
        super.init()
        // 3. Call the configuration. Call it early in case some 3rd party framework need init method to be called
        configure()
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("🔵 AppDelegate \(#function)")
        // 4a. Call 'application(_:didFinishLaunchingWithOptions:)' for All CustomAppDelegates
        appDelegates.forEach { _ = $0.application?(application, didFinishLaunchingWithOptions: launchOptions) }
        
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("🔵 AppDelegate \(#function)")
        // 4b. Call 'applicationDidBecomeActive(_:)' for All CustomAppDelegates
        appDelegates.forEach { _ = $0.applicationDidBecomeActive?(application) }
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("🔵 AppDelegate \(#function)")
        // 4c. Call 'applicationWillResignActive(_:)' for All CustomAppDelegates
        appDelegates.forEach { _ = $0.applicationWillResignActive?(application) }
    }
}

// MARK: - Notification
extension AppDelegate {
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        print("🔵 AppDelegate \(#function)")
        // 4d. Call 'application(_:didRegisterForRemoteNotificationsWithDeviceToken:)' for All CustomAppDelegates
        appDelegates.forEach { _ = $0.application?(application, didRegisterForRemoteNotificationsWithDeviceToken: deviceToken) }
    }
}

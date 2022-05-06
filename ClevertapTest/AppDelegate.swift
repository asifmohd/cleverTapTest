//
//  AppDelegate.swift
//  ClevertapTest
//
//  Created by Asif on 06/05/22.
//

import UIKit
import CleverTapSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        CleverTap.setCredentialsWithAccountID("TEST-RAN-DOM-KEYS", andToken: "TEST-ran-dom")
        for _ in 1...20 {
            DispatchQueue.global(qos: .userInitiated).async {
                CleverTap.sharedInstance()
            }
        }

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}


//
//  AppDelegate.swift
//  Challenge1
//
//  Created by nikita on 30.03.2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
             window = UIWindow(frame: UIScreen.main.bounds)
             window?.backgroundColor = .white
             window?.rootViewController = RootViewController()
             window?.makeKeyAndVisible()
             return true
         }

}


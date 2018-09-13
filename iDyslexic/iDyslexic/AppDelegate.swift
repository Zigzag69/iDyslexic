//
//  AppDelegate.swift
//  iDyslexic
//
//  Created by Иван Гевелев on 13.09.2018.
//  Copyright © 2018 Heveliev Ivan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let mainRoot = UINavigationController(rootViewController: MainVC())

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = mainRoot
        
        return true
    }
}


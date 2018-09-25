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
    let mainRoot = UINavigationController(rootViewController: MainTBC())

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()

        mainRoot.navigationBar.barStyle = .blackOpaque
        mainRoot.navigationBar.isHidden = true
        window?.rootViewController = mainRoot
        
        return true
    }
}


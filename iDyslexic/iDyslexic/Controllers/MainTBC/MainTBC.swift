//
//  MainTBC.swift
//  iDyslexic
//
//  Created by Иван Гевелев on 14.09.2018.
//  Copyright © 2018 Heveliev Ivan. All rights reserved.
//

import UIKit

class MainTBC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let homeRoot = UINavigationController(rootViewController: HomeVC())
        homeRoot.navigationBar.isHidden = true
        homeRoot.tabBarItem.image = #imageLiteral(resourceName: "icHomeMenu")
        
        let searchPeopleRoot = UINavigationController(rootViewController: UIViewController())
        searchPeopleRoot.navigationBar.isHidden = true
        searchPeopleRoot.tabBarItem.image = #imageLiteral(resourceName: "icSearchPpl")

        let chatMenuRoot = UINavigationController(rootViewController: UIViewController())
        chatMenuRoot.navigationBar.isHidden = true
        chatMenuRoot.tabBarItem.image = #imageLiteral(resourceName: "icChatMenu")
        
        let classroomRoot = UINavigationController(rootViewController: UIViewController())
        classroomRoot.navigationBar.isHidden = true
        classroomRoot.tabBarItem.image = #imageLiteral(resourceName: "icClassroom")
        
        let profileMenuRoot = UINavigationController(rootViewController: UIViewController())
        profileMenuRoot.navigationBar.isHidden = true
        profileMenuRoot.tabBarItem.image = #imageLiteral(resourceName: "icProfileMenu")
        
        
        viewControllers = [homeRoot, searchPeopleRoot, chatMenuRoot, classroomRoot, profileMenuRoot]
    }
    
    override func viewWillLayoutSubviews() {
        var tabFrame = self.tabBar.frame
        tabFrame.size.height = 48
        tabFrame.origin.y = self.view.frame.size.height - 48
        self.tabBar.frame = tabFrame
    }
}

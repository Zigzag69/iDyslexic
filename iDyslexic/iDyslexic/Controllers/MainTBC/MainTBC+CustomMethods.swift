//
//  MainTBC+CustomMethods.swift
//  iDyslexic
//
//  Created by Иван Гевелев on 14.09.2018.
//  Copyright © 2018 Heveliev Ivan. All rights reserved.
//

import UIKit

extension MainTBC {
    func preparations() {
        let homeRoot = UINavigationController(rootViewController: HomeVC())
        homeRoot.navigationBar.isHidden = true
        homeRoot.tabBarItem.image = #imageLiteral(resourceName: "icHomeMenu")

        let searchPeopleRoot = UINavigationController(rootViewController: UIViewController())
        searchPeopleRoot.tabBarItem.image = #imageLiteral(resourceName: "icSearchPpl")
        let chatMenuRoot = UINavigationController(rootViewController: UIViewController())
        chatMenuRoot.tabBarItem.image = #imageLiteral(resourceName: "icChatMenu")
        let classroomRoot = UINavigationController(rootViewController: UIViewController())
        classroomRoot.tabBarItem.image = #imageLiteral(resourceName: "icClassroom")
        let profileMenuRoot = UINavigationController(rootViewController: UIViewController())
        profileMenuRoot.tabBarItem.image = #imageLiteral(resourceName: "icProfileMenu")
        
        viewControllers = [homeRoot, searchPeopleRoot, chatMenuRoot, classroomRoot, profileMenuRoot]
    }
}

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
        homeRoot.tabBarItem.imageInsets = UIEdgeInsets.init(top: 5, left: 0, bottom: -6, right: 0)
        let searchPeopleRoot = UINavigationController(rootViewController: UIViewController())
        searchPeopleRoot.tabBarItem.image = #imageLiteral(resourceName: "icSearchPpl")
        searchPeopleRoot.tabBarItem.imageInsets = UIEdgeInsets.init(top: 5, left: 0, bottom: -6, right: 0)
        let chatMenuRoot = UINavigationController(rootViewController: UIViewController())
        chatMenuRoot.tabBarItem.image = #imageLiteral(resourceName: "icChatMenu")
        chatMenuRoot.tabBarItem.imageInsets = UIEdgeInsets.init(top: 5, left: 0, bottom: -6, right: 0)
        let classroomRoot = UINavigationController(rootViewController: UIViewController())
        classroomRoot.tabBarItem.image = #imageLiteral(resourceName: "icClassroom")
        classroomRoot.tabBarItem.imageInsets = UIEdgeInsets.init(top: 5, left: 0, bottom: -6, right: 0)
        let profileMenuRoot = UINavigationController(rootViewController: UIViewController())
        profileMenuRoot.tabBarItem.image = #imageLiteral(resourceName: "icProfileMenu")
        profileMenuRoot.tabBarItem.imageInsets = UIEdgeInsets.init(top: 5, left: 0, bottom: -6, right: 0)

        viewControllers = [homeRoot, searchPeopleRoot, chatMenuRoot, classroomRoot, profileMenuRoot]
    }
}

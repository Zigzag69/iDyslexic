//
//  MainTBC.swift
//  iDyslexic
//
//  Created by Иван Гевелев on 14.09.2018.
//  Copyright © 2018 Heveliev Ivan. All rights reserved.
//

import UIKit

class MainTBC: UITabBarController {
    
//MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    
        preparations()
    }
    
    override func viewWillLayoutSubviews() {
        var tabFrame = tabBar.frame
        tabFrame.size.height = 48
        tabFrame.origin.y = view.frame.size.height - 48
        tabBar.frame = tabFrame
    }
}

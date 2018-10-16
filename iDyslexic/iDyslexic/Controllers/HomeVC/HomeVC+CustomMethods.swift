//
//  HomeVC+CustomMethods.swift
//  iDyslexic
//
//  Created by Иван Гевелев on 13.09.2018.
//  Copyright © 2018 Heveliev Ivan. All rights reserved.
//

import UIKit

extension HomeVC {
    func preparations() {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()

        gradient.layer.shadowColor = UIColor.lightGray.cgColor
        gradient.layer.shadowRadius = 2
        gradient.layer.shadowOpacity = 0.5
        gradient.layer.shadowOffset = CGSize(width: 0, height: 4)
    }
    
    func updateHeight() {
        tableViewHomeVC.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: -21, right: 0)
    }
    
    func generation() {
        for _ in 0..<generatedNumberOfCells {
            containerGeneratedTypes.append(containerTypes.randomElement()!)
        }
        
        if generatedNumberOfCells == 1 {
            print("Сгененирована 1 ячейка: \(containerGeneratedTypes)")
        } else {
            print("Сгенерировано \(generatedNumberOfCells) ячеек: \(containerGeneratedTypes)")
        }
    }
}

//
//  HomeVC.swift
//  iDyslexic
//
//  Created by Иван Гевелев on 13.09.2018.
//  Copyright © 2018 Heveliev Ivan. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var gradient: UIImageView!
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var tableViewHomeVC: UITableView!

    let containerTypes = ["Text", "Image", "Text+Image", "Video", "Text+Video", "Attachments", "Text+Attachments", "Links", "TwoPhotos", "Text+TwoPhotos", "ThreePhotos"]
    var containerGeneratedTypes = [String]()
    let generatedNumberOfCells = Int.random(in: 1..<11)
    let isHorizontalImageHeight = UIScreen.main.bounds.size.width / 4 * 3
    let isVerticalImageHeight = UIScreen.main.bounds.size.width / 3 * 4
    
//MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        preparations()
        updateHeight()
        generation()
    }
    
//MARK: - IBActions
    @IBAction func removeLastElement() {
        if containerGeneratedTypes.isEmpty == false {
            let lastElement = containerGeneratedTypes.last!
            print("Элемент: \(lastElement) был удален")
            containerGeneratedTypes.removeLast()
            tableViewHomeVC.reloadData()
        }
    }
    
    @IBAction func addElement() {
        let randomElement = containerTypes.randomElement()!
        print("Сгенерирован и добавлен в таблицу элемент: \(randomElement)")
        containerGeneratedTypes.append(randomElement)
        tableViewHomeVC.reloadData()
    }
}

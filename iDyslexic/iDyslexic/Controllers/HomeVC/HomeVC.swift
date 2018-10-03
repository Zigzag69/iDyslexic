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
    
    var containerTypes = ["Text", "Image", "Video", "Text+Attachments", "Links"]
    var containerGeneratedTypes = [String]()
    let isHorizontalImageHeight = UIScreen.main.bounds.size.width / 4 * 3
    let isVerticalImageHeight = UIScreen.main.bounds.size.width / 3 * 4
    let generatedNumberOfCells = Int.random(in: 1..<11)
    
//MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        preparations()
        updateHeight()
        generation()
    }
    
//MARK: - IBActions
    @IBAction func removeLastElement() {
        if containerTypes.isEmpty == false {
            containerTypes.removeLast()
            tableViewHomeVC.reloadData()
        }
    }
    
    @IBAction func addElement() {
        containerTypes.append("Text")
        tableViewHomeVC.reloadData()
    }
}

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
    
    var container = [#imageLiteral(resourceName: "icTestImage1"), #imageLiteral(resourceName: "icTestImage1"), #imageLiteral(resourceName: "icTestImage1"), #imageLiteral(resourceName: "icTestImage1"), #imageLiteral(resourceName: "icTestImage1")]
    let containerTypes = ["Text", "Image", "Video", "Files", "Links"]
    let isHorizontalImageHeight = UIScreen.main.bounds.size.width / 4 * 3
    let isVerticalImageHeight = UIScreen.main.bounds.size.width / 3 * 4
    let numberOfCells = Int.random(in: 1..<11)
//    let typeOfCells = String.rand
    
//MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        preparations()
        updateHeight()
        generation()
    }
    
//MARK: - IBActions
    @IBAction func removeLastElement() {
        if container.isEmpty == false {
            container.removeLast()
            tableViewHomeVC.reloadData()
        }
    }
    
    @IBAction func addElement() {
        container.append(#imageLiteral(resourceName: "icTestImage1"))
        tableViewHomeVC.reloadData()
    }
}

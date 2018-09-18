//
//  HomeVC+UITableViewDelegate.swift
//  iDyslexic
//
//  Created by Иван Гевелев on 18.09.2018.
//  Copyright © 2018 Heveliev Ivan. All rights reserved.
//

import UIKit

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell",
                                            owner: self,
                                            options: nil)?.first as! TableViewCell
        cell.imageTableViewCell.image = #imageLiteral(resourceName: "icTestImage1")
        return cell
    }
    
 
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = Bundle.main.loadNibNamed("SectionHeaderView",
                                              owner: self,
                                              options: nil)?.first as? SectionHeaderView
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56
    }
}

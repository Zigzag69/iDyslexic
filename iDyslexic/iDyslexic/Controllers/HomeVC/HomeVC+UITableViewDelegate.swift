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
        return container.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ImageTableViewCell",
                                            owner: self,
                                            options: nil)?.first as! ImageTableViewCell
        cell.imageTableViewCell.image = #imageLiteral(resourceName: "icTestImage1")
//        cell.labelTableViewCell.text = "I have been questioned by many people to disclose some of the greatest traffic generating techniques that I know of. I have been questioned by many people to disclose some of the greatest traffic generating techniques that I know of."
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 320
//            return 192
        }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let header = Bundle.main.loadNibNamed("SectionHeaderView",
                                                  owner: self,
                                                  options: nil)?.first as! SectionHeaderView
        return header
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56
    }
}

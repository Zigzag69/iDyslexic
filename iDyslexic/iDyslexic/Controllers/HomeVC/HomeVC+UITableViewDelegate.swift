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
        return containerGeneratedTypes.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if containerGeneratedTypes[indexPath.row] == "Text" {
            let cell = Bundle.main.loadNibNamed("TextTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! TextTableViewCell
            return cell
        } else if containerGeneratedTypes[indexPath.row] == "Image" {
            let cell = Bundle.main.loadNibNamed("ImageTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! ImageTableViewCell
            cell.imageTableViewCell.image = #imageLiteral(resourceName: "icTestImage1")
            if #imageLiteral(resourceName: "icTestImage1").size.height > #imageLiteral(resourceName: "icTestImage1").size.width {
                cell.viewHeightTableViewCell.constant = isVerticalImageHeight
            } else if #imageLiteral(resourceName: "icTestImage1").size.height < #imageLiteral(resourceName: "icTestImage1").size.width {
                cell.viewHeightTableViewCell.constant = isHorizontalImageHeight
            } else {
                cell.viewHeightTableViewCell.constant = UIScreen.main.bounds.size.width
            }
            return cell
        } else if containerGeneratedTypes[indexPath.row] == "Video" {
            let cell = Bundle.main.loadNibNamed("VideoTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! VideoTableViewCell
            return cell
        } else if containerGeneratedTypes[indexPath.row] == "Text+Attachments" {
            let cell = Bundle.main.loadNibNamed("TextAttachmentsTableViewCell",
                                                owner: self,
                                            options: nil)?.first as! TextAttachmentsTableViewCell
            return cell
        } else if containerGeneratedTypes[indexPath.row] == "Links" {
            let cell = Bundle.main.loadNibNamed("LinksTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! LinksTableViewCell
            return cell
        } else {
            let cell = Bundle.main.loadNibNamed("TextTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! TextTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if containerGeneratedTypes[indexPath.row] == "Text" {
            return 192
        } else if containerGeneratedTypes[indexPath.row] == "Image" {
            if #imageLiteral(resourceName: "icTestImage1").size.height > #imageLiteral(resourceName: "icTestImage1").size.width {
                return 132 + isVerticalImageHeight
            } else if #imageLiteral(resourceName: "icTestImage1").size.height < #imageLiteral(resourceName: "icTestImage1").size.width {
                return 132 + isHorizontalImageHeight
            } else {
                return 132 +  UIScreen.main.bounds.size.width
            }
        } else if containerGeneratedTypes[indexPath.row] == "Video" {
            return 332
        } else if containerGeneratedTypes[indexPath.row] == "Text+Attachments" {
            return 280
        } else if containerGeneratedTypes[indexPath.row] == "Links" {
            return 450
        } else {
            return 10
        }
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
        return 68
    }
}

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
            cell.imageMiddleView.image = #imageLiteral(resourceName: "icTestImage1")
            if #imageLiteral(resourceName: "icTestImage1").size.height > #imageLiteral(resourceName: "icTestImage1").size.width {
                cell.heightMiddleView.constant = isVerticalImageHeight
            } else if #imageLiteral(resourceName: "icTestImage1").size.height < #imageLiteral(resourceName: "icTestImage1").size.width {
                cell.heightMiddleView.constant = isHorizontalImageHeight
            } else {
                cell.heightMiddleView.constant = UIScreen.main.bounds.size.width
            }
            return cell
            
        } else if containerGeneratedTypes[indexPath.row] == "Text+Image" {
            let cell = Bundle.main.loadNibNamed("TextImageTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! TextImageTableViewCell
            cell.imageMiddleView.image = #imageLiteral(resourceName: "icTestImage1")
            if #imageLiteral(resourceName: "icTestImage1").size.height > #imageLiteral(resourceName: "icTestImage1").size.width {
                cell.heightMiddleView.constant = isVerticalImageHeight + 76
            } else if #imageLiteral(resourceName: "icTestImage1").size.height < #imageLiteral(resourceName: "icTestImage1").size.width {
                cell.heightMiddleView.constant = isHorizontalImageHeight + 76
            } else {
                cell.heightMiddleView.constant = UIScreen.main.bounds.size.width + 76
            }
            return cell
        } else if containerGeneratedTypes[indexPath.row] == "Video" {
            let cell = Bundle.main.loadNibNamed("VideoTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! VideoTableViewCell
            return cell
        } else if containerGeneratedTypes[indexPath.row] == "Text+Video" {
            let cell = Bundle.main.loadNibNamed("TextVideoTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! TextVideoTableViewCell
            return cell
        } else if containerGeneratedTypes[indexPath.row] == "Attachments" {
            let cell = Bundle.main.loadNibNamed("AttachmentsTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! AttachmentsTableViewCell
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
        } else if containerGeneratedTypes[indexPath.row] == "TwoPhotos" {
            let cell = Bundle.main.loadNibNamed("TwoPhotosTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! TwoPhotosTableViewCell
            cell.heightMiddleView.constant = UIScreen.main.bounds.size.width / 2 - 1
            return cell
        } else if containerGeneratedTypes[indexPath.row] == "Text+TwoPhotos" {
            let cell = Bundle.main.loadNibNamed("TextTwoPhotosTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! TextTwoPhotosTableViewCell
            cell.heightMiddleView.constant = UIScreen.main.bounds.size.width / 2 + 75
            return cell
        } else if containerGeneratedTypes[indexPath.row] == "ThreePhotos" {
            let cell = Bundle.main.loadNibNamed("ThreePhotosTableViewCell",
                                                owner: self,
                                                options: nil)?.first as! ThreePhotosTableViewCell
            cell.imageTopContainer.image = #imageLiteral(resourceName: "icTestImage1")
            if #imageLiteral(resourceName: "icTestImage1").size.height > #imageLiteral(resourceName: "icTestImage1").size.width {
                cell.heightMiddleView.constant = isVerticalImageHeight + UIScreen.main.bounds.size.width / 2 + 1
                cell.heightTopContainer.constant = isVerticalImageHeight
            } else if #imageLiteral(resourceName: "icTestImage1").size.height < #imageLiteral(resourceName: "icTestImage1").size.width {
                cell.heightMiddleView.constant = isHorizontalImageHeight + UIScreen.main.bounds.size.width / 2 + 1
                cell.heightTopContainer.constant = isHorizontalImageHeight
            } else {
                cell.heightMiddleView.constant = UIScreen.main.bounds.size.width + UIScreen.main.bounds.size.width / 2 + 1
                cell.heightTopContainer.constant = UIScreen.main.bounds.size.width
            }
            cell.heightLeftContainer.constant = UIScreen.main.bounds.size.width / 2 - 1
            cell.heightRightContainer.constant = UIScreen.main.bounds.size.width / 2 - 1
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
                return isVerticalImageHeight + 132
            } else if #imageLiteral(resourceName: "icTestImage1").size.height < #imageLiteral(resourceName: "icTestImage1").size.width {
                return isHorizontalImageHeight + 132
            } else {
                return UIScreen.main.bounds.size.width + 132
            }
        } else if containerGeneratedTypes[indexPath.row] == "Text+Image" {
            if #imageLiteral(resourceName: "icTestImage1").size.height > #imageLiteral(resourceName: "icTestImage1").size.width {
                return isVerticalImageHeight + 208
            } else if #imageLiteral(resourceName: "icTestImage1").size.height < #imageLiteral(resourceName: "icTestImage1").size.width {
                return isHorizontalImageHeight + 208
            } else {
                return UIScreen.main.bounds.size.width + 208
            }
        } else if containerGeneratedTypes[indexPath.row] == "Video" {
            return 332
        } else if containerGeneratedTypes[indexPath.row] == "Text+Video" {
            return 408
        } else if containerGeneratedTypes[indexPath.row] == "Attachments" {
            return 204
        } else if containerGeneratedTypes[indexPath.row] == "Text+Attachments" {
            return 280
        } else if containerGeneratedTypes[indexPath.row] == "Links" {
            return 450
        } else if containerGeneratedTypes[indexPath.row] == "TwoPhotos" {
            return 120 + UIScreen.main.bounds.size.width / 2 - 1
        } else if containerGeneratedTypes[indexPath.row] == "Text+TwoPhotos" {
            return 196 + UIScreen.main.bounds.size.width / 2 - 1
        } else if containerGeneratedTypes[indexPath.row] == "ThreePhotos" {
            if #imageLiteral(resourceName: "icTestImage1").size.height > #imageLiteral(resourceName: "icTestImage1").size.width {
                return isVerticalImageHeight + UIScreen.main.bounds.size.width / 2 + 133
            } else if #imageLiteral(resourceName: "icTestImage1").size.height < #imageLiteral(resourceName: "icTestImage1").size.width {
                return isHorizontalImageHeight + UIScreen.main.bounds.size.width / 2 + 133
            } else {
                return UIScreen.main.bounds.size.width + UIScreen.main.bounds.size.width / 2 + 133
            }
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

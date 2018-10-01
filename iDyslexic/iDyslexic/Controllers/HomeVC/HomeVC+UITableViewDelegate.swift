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
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return container.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TextTableViewCell",
                                            owner: self,
                                            options: nil)?.first as! TextTableViewCell
//        cell.imageTableViewCell.image = #imageLiteral(resourceName: "icTestImage1")
        cell.labelTableViewCell.text = "Подписка даёт возможность слушать музыку без аудиорекламы на компьютере и в мобильных устройствах, а также сохранять аудиозаписи в приложении BOOM и слушать их без подключения к интернету."
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 180
        }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            let header = Bundle.main.loadNibNamed("SectionHeaderView",
                                                  owner: self,
                                                  options: nil)?.first as! SectionHeaderView
            header.viewSectionHeader.layer.shadowColor = UIColor.lightGray.cgColor
            header.viewSectionHeader.layer.shadowRadius = 5
            header.viewSectionHeader.layer.shadowOpacity = 0.5
            header.viewSectionHeader.layer.shadowOffset = CGSize(width: 0, height: 2)
        return header
        default :
            let headerView = UIView()
            headerView.backgroundColor = .clear
            return headerView
        }
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 68
        default:
            return 12
        }
    }
}

//
//  TableViewCell.swift
//  iDyslexic
//
//  Created by Иван Гевелев on 18.09.2018.
//  Copyright © 2018 Heveliev Ivan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imageTableViewCell: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = UIEdgeInsetsInsetRect(contentView.frame, UIEdgeInsetsMake(12, 0, 0, 0))
    }
}

//
//  ImageTableViewCell.swift
//  iDyslexic
//
//  Created by Иван Гевелев on 20.09.2018.
//  Copyright © 2018 Heveliev Ivan. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
//    @IBOutlet weak var imageTableViewCell: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets.init(top: 12,
                                                                          left: 0,
                                                                          bottom: 0,
                                                                          right: 0))
    }
}

//
//  ThreePhotosTableViewCell.swift
//  iDyslexic
//
//  Created by Admin on 08.10.2018.
//  Copyright © 2018 Heveliev Ivan. All rights reserved.
//

import UIKit

class ThreePhotosTableViewCell: UITableViewCell {
    @IBOutlet weak var heightMiddleView: NSLayoutConstraint!
    @IBOutlet weak var heightTopContainer: NSLayoutConstraint!
    @IBOutlet weak var heightLeftContainer: NSLayoutConstraint!
    @IBOutlet weak var heightRightContainer: NSLayoutConstraint!
    @IBOutlet weak var imageTopContainer: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}

//
//  myCollectionViewCell.swift
//  lab7-1-4
//
//  Created by mmslab-mini on 2022/3/13.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setCell(imgName:String,title:String){
        
        imgView.image = UIImage(named: imgName)
        titleLabel.text = title
    }
}

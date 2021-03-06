//
//  myTableViewCell.swift
//  lab7-1-2
//
//  Created by mmslab-mini on 2022/3/19.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet var myImgView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(imgName:String,title:String){
        myImgView.image = UIImage(named: imgName)
        titleLabel.text = title
    }
}

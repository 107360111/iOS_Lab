//
//  ViewController.swift
//  lab6-1-2
//
//  Created by mmslab-mini on 2022/3/12.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func showCustomPopupView(_ sender: Any) {
        let popupVC = customPopupViewController()
        popupVC.showOn(VC: self)
    }
    
}


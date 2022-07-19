//
//  SecViewController.swift
//  lab4-1-6
//
//  Created by mmslab-mini on 2022/2/27.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class SecViewController: UIViewController {

    var data = ""
    var closure : ((String)->())?
    
    @IBOutlet var showDataLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showDataLabel.text = data
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        let lastTitle = textField.text
        closure!(lastTitle ?? "")
    }
    
}

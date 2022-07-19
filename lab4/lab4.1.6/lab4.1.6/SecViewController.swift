//
//  SecViewController.swift
//  lab4.1.6
//
//  Created by mmslab-mini on 2022/2/26.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class SecViewController: UIViewController {

    var data = ""
    @IBOutlet var showDataLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showDataLabel.text = data
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

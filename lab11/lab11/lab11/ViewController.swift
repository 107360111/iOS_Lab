//
//  ViewController.swift
//  lab11
//
//  Created by mmslab406-mini2018-2 on 2022/7/6.
//

import UIKit
import Toast

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    @IBAction func showToastBtnClick(_ sender: Any) {
        
        let showstr = textField.text
        
        if(showstr != ""){
            view.makeToast(showstr)
        }
        else{
            view.makeToast("請於上方text Field中輸入要顯示之文字")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


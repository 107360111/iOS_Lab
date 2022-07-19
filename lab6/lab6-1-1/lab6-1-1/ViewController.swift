//
//  ViewController.swift
//  lab6-1-1
//
//  Created by mmslab-mini on 2022/3/6.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func login(_ sender: Any) {
        let alertController = UIAlertController(title: "登入", message: "輸入帳號密碼", preferredStyle:.alert)
        alertController.addTextField { (textField) in
            textField.placeholder = "請輸入帳號"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "請輸入密碼"
            textField.isSecureTextEntry = true
        }
        
        let determineAction = UIAlertAction(title: "確定", style: .default) { (action) in
            let account = alertController.textFields![0]
            let password = alertController.textFields![1]
            self.showLogin(account.text!  , password.text!)
        }
        
        let cancelAction = UIAlertAction(title: "取消", style: .cancel)
        
        alertController.addAction(determineAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true)
    }
    
    func showLogin(_ account:String,_ password:String){
        let msgView = UIAlertController(title: "登入成功", message: String(format:"帳號：%@ 密碼：%@",account,password), preferredStyle:.alert)
        let determineAction = UIAlertAction(title: "確定", style: .default)
        msgView.addAction(determineAction)
        present(msgView, animated: true)
    }

}


//
//  ViewController.swift
//  lab6_exercise
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

    @IBAction func demoAlertActionSheet(_ sender: Any) {
        let actionSheetController = UIAlertController(title: "標題", message: "說明", preferredStyle:.actionSheet)
        
        
        let commonAction = UIAlertAction(title: "預設樣式", style: .default)
        let destructiveAction = UIAlertAction(title: "危險樣式", style: .destructive)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel)
        
        actionSheetController.addAction(commonAction)
        actionSheetController.addAction(destructiveAction)
        actionSheetController.addAction(cancelAction)
        
        present(actionSheetController, animated: true)
    }
    
    @IBAction func demoAlertView(_ sender: Any) {
        let actionSheetController = UIAlertController(title: "標題", message: "說明", preferredStyle:.alert)
        
        let commonAction = UIAlertAction(title: "預設樣式", style: .default)
        let destructiveAction = UIAlertAction(title: "危險樣式", style: .destructive)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel)
        
        actionSheetController.addAction(commonAction)
        actionSheetController.addAction(destructiveAction)
        actionSheetController.addAction(cancelAction)
        
        present(actionSheetController, animated: true)
    }
    
    @IBAction func login(_ sender: Any) {
        let actionSheetController = UIAlertController(title: "登入", message: "輸入帳號密碼", preferredStyle:.alert)
        actionSheetController.addTextField { (textField) in
            textField.placeholder = "請輸入帳號"
        }
        actionSheetController.addTextField { (textField) in
            textField.placeholder = "請輸入密碼"
            textField.isSecureTextEntry = true
        }
        
        let determineAction = UIAlertAction(title: "確定", style: .default) { (action) in
            let account = actionSheetController.textFields![0]
            let password = actionSheetController.textFields![1]
            self.showLogin(account.text!, password.text!)
        }
        
        let cancelAction = UIAlertAction(title: "取消", style: .cancel)
        
        actionSheetController.addAction(determineAction)
        actionSheetController.addAction(cancelAction)
        present(actionSheetController, animated: true)
    }
    
    func showLogin(_ account:String,_ password:String){
        let msgView = UIAlertController(title: "登入成功", message: String(format:"帳號：%@ 密碼：%@",account,password), preferredStyle:.alert)
        let determineAction = UIAlertAction(title: "確定", style: .default)
        msgView.addAction(determineAction)
        present(msgView, animated: true)
    }
    
    @IBAction func showCustomPopup(_ sender: Any) {
        let VC = customPopupViewController()
        
        VC.selectHandler = { (name:String)->() in
            self.showStringData(str: name)
        }
        VC.showInVC(VC: self)
    }
    
    func showStringData(str:String){
            let msgView = UIAlertController(title: str, message:"", preferredStyle:.alert)
            let determineAction = UIAlertAction(title: "確定", style: .default)
            msgView.addAction(determineAction)
            present(msgView, animated: true)
        }
}


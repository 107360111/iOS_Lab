//
//  ViewController.swift
//  lab7_exercise
//
//  Created by mmslab-mini on 2022/3/19.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableViewContainerView: UIView!
    @IBOutlet var collectionViewContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fruitNameArr = ["apple","avocado","banana","cherries","coconut","grapes","lemon","orange","peach","pineapple","strawberry","tomato"]
        
        let userDefault = UserDefaults.standard
        
        userDefault.set(fruitNameArr, forKey: "fruitName")
        
        title = "demo table view"
    }
    
    @IBAction func switchBtnClick(_ sender: UIBarButtonItem) {
        if(sender.tag == 0){
            sender.tag = 1
            title = "demo collection view"
        }
        else{
            sender.tag = 0
            title = "demo table view"
        }
        
        tableViewContainerView.isHidden = !tableViewContainerView.isHidden
        collectionViewContainerView.isHidden = !collectionViewContainerView.isHidden
    }
}

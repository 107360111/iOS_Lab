//
//  completeViewController.swift
//  lab4-exercise
//
//  Created by mmslab-mini on 2022/2/27.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class completeViewController: UIViewController {

    @IBOutlet var orderLabel: UILabel!
    var block : ((String)->())?
    var myDrink : drink?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orderLabel.text = String(format:"您的飲料：%@\n甜度為：%@\n冰量為：%@\n售價：%d",myDrink!.name,myDrink!.sweetness,myDrink!.ice,myDrink!.price)
        
    }

    @IBAction func backToHomePage(_ sender: Any) {
        block!("您尚未點餐\n 請點選開始點餐進行點餐作業")
        dismiss(animated: true, completion: nil)
    }
    
}

//
//  orderViewController.swift
//  lab4-exercise
//
//  Created by mmslab-mini on 2022/2/27.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

@objc protocol OrderViewDelegate {
    
    func sendOrder(myOrder:drink)
}

class orderViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var sweetSelect: UISegmentedControl!
    @IBOutlet var iceSelect: UISegmentedControl!
    @IBOutlet var priceTextField: UITextField!
    
    var myDrink : drink?
    weak var delegate : OrderViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func sendBtnClick(_ sender: Any) {
        if(myDrink == nil){
            myDrink = drink()
        }
        
        myDrink?.name = nameTextField.text ?? ""
        myDrink?.sweetSelectIndex = sweetSelect.selectedSegmentIndex
        myDrink?.sweetness = sweetSelect.titleForSegment(at: sweetSelect.selectedSegmentIndex)!
        myDrink?.iceSelectIndex = iceSelect.selectedSegmentIndex
        myDrink?.ice = iceSelect.titleForSegment(at: iceSelect.selectedSegmentIndex)!
        myDrink?.price = Int(priceTextField.text ?? "0") ?? 0
        delegate?.sendOrder(myOrder: myDrink!)
        navigationController?.popViewController(animated: true)
    }
    

}

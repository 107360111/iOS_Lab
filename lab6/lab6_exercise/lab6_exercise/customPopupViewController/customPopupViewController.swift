//
//  customPopupViewController.swift
//  lab6_exercise
//
//  Created by mmslab-mini on 2022/3/12.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class customPopupViewController: UIViewController {

    @IBOutlet var popupView: UIView!
    var selectHandler : ((String)->())?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func showInVC(VC:UIViewController){
        self.modalPresentationStyle = .currentContext
        let transition = CATransition()
        transition.type = .fade
        VC.view.window?.layer.add(transition, forKey: kCATransition)
        VC.present(self, animated: false) {
            self.popupView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            self.popupView.alpha = 0
            UIView.animate(withDuration: 0.25) {
                self.popupView.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.popupView.alpha = 1
            }
            
        }
    }

    @IBAction func dismissView(_ sender: Any) {
        
        dissMissPopupView()
    }
    
    func dissMissPopupView(){
        let transition = CATransition()
                transition.duration = 0.25
                transition.type = .fade
                view.window?.layer.add(transition, forKey: kCATransition)
                dismiss(animated: false, completion: nil)
    }
    
    @IBAction func selectFood(_ sender: UIButton) {
        dissMissPopupView()
        self.selectHandler!(sender.titleLabel!.text!)
    }
}

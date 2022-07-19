//
//  ViewController.swift
//  lab4-1-6
//
//  Created by mmslab-mini on 2022/2/27.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showSecPage" ){
            let VC = segue.destination as! SecViewController             
            VC.data = "使用 segue 傳遞資料"
            VC.closure = {(title:String) in
                self.title = title
            }
        }
    }
    
    
    @IBAction func nextPage(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let VC = storyBoard.instantiateViewController(withIdentifier: "SecViewController") as! SecViewController
        VC.data = "使用程式碼傳遞資料"
        VC.closure = {(title:String) in
            self.title = title
        }
        present(VC, animated: true, completion: nil)
    }
    
}




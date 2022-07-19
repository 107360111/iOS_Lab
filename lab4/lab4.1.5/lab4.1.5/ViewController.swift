//
//  ViewController.swift
//  lab4.1.5
//
//  Created by mmslab-mini on 2022/2/26.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextPage(_ sender: Any) {
    }
    
    func presentVC(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let VC = storyBoard.instantiateViewController(identifier: "SecViewController") as! SecViewController
        present(VC, animated: true, completion: nil)
    }
    
    func pushVC(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let VC = storyBoard.instantiateViewController(identifier: "SecViewController") as! SecViewController
        navigationController?.pushViewController(VC, animated: true)
    }}


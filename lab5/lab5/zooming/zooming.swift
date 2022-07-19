//
//  zooming.swift
//  lab5
//
//  Created by mmslab-mini on 2022/3/7.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class zooming: UIViewController {

    @IBOutlet var containerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension zooming:UIScrollViewDelegate{
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView?{
        return containerView
    }
}

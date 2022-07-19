//
//  scrolling.swift
//  lab5
//
//  Created by mmslab-mini on 2022/3/7.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class scrolling: UIViewController {

    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension scrolling :UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        let page = scrollView.contentOffset.x/scrollView.frame.size.width
        pageControl.currentPage = Int(page)
    }
}

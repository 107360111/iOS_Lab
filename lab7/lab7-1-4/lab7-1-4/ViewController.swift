//
//  ViewController.swift
//  lab7-1-4
//
//  Created by mmslab-mini on 2022/3/13.
//  Copyright © 2022 曾廷修. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    let fruitArr = ["apple","avocado","banana","cherries","coconut","grapes","lemon","orange","peach","pineapple","strawberry","tomato"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewInit()
    }
    
    func collectionViewInit(){
        let cellNib = UINib(nibName: "myCollectionViewCell", bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: "cell")
    }
}

extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruitArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.setCell(imgName: fruitArr[indexPath.row], title: fruitArr[indexPath.row])
        return cell
    }
}

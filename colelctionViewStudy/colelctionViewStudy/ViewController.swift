//
//  ViewController.swift
//  colelctionViewStudy
//
//  Created by Admin on 9/16/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var layout: UICollectionViewFlowLayout!
    
    let data = [
        UIColor.black,
        UIColor.yellow,
        UIColor.brown,
        UIColor.green,
    ]
    
    let cellId = "PhotoCell"
    
    let insets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewSetup()
        
    }

    func collectionViewSetup(){
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // регистрация при верстке из ксиба
        collectionView.register(UINib(nibName: cellId, bundle: nil), forCellWithReuseIdentifier: cellId)
        
        // регистрация при верстке кодом
        // collectionView.register(PhotoCell.self, forCellWithReuseIdentifier: cellId)
    }
}

// MARK: - UICollectionViewDelegate
extension ViewController : UICollectionViewDelegate{
    
}

// MARK: - UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count * 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? PhotoCell else {return UICollectionViewCell()}
        
        let index = indexPath.item % 4
        let color = data[index]
        cell.setup(color: color)
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = (collectionView.frame.width / 2) - 16
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return insets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    
}


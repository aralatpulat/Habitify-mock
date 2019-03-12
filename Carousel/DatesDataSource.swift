//
//  DatesDataSource.swift
//  Carousel
//
//  Created by Aral Atpulat on 12.03.2019.
//  Copyright © 2019 Aral Atpulat. All rights reserved.
//

import UIKit

class DatesDataSource: NSObject{
    
}

extension DatesDataSource: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DateCell", for: indexPath) as! DateCell
        cell.dayOfMonth = "\(indexPath.row)"
        cell.dayOfWeek = "Mon"
        return cell
    }
}

extension DatesDataSource: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
}

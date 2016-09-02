//
//  Page1DetailCell4TableViewCell.swift
//  A2SLayoutP1
//
//  Created by Jakkawad Chaiplee on 9/1/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1DetailCell4TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView:UICollectionView!
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell0 = collectionView.dequeueReusableCellWithReuseIdentifier("tableCell0", forIndexPath: indexPath)
            return cell0
        } else if indexPath.row == 1 {
            let cell1 = collectionView.dequeueReusableCellWithReuseIdentifier("tableCell1", forIndexPath: indexPath)
            return cell1
        } else {
            let cell2 = collectionView.dequeueReusableCellWithReuseIdentifier("tableCell2", forIndexPath: indexPath)
            return cell2
        }
    }
    /*
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = screenSize.width
        return CGSize(width: (screenWidth/3)-6, height: (screenWidth/3)-6)
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

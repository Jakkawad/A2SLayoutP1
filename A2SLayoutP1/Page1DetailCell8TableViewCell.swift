//
//  Page1DetailCell8TableViewCell.swift
//  A2SLayoutP1
//
//  Created by admin on 9/2/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1DetailCell8TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView:UICollectionView!
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCellWithReuseIdentifier("tableCell0", forIndexPath: indexPath)
        
        return cell0
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

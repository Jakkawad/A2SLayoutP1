//
//  ProductsGridFlowLayout.swift
//  A2SLayoutP1
//
//  Created by admin on 9/3/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class ProductsGridFlowLayout:UICollectionViewFlowLayout {
    // fix size
    let itemHeight: CGFloat = 156
    
    override init() {
        super.init()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setupLayout() {
        minimumInteritemSpacing = 1
        minimumLineSpacing = 1
        scrollDirection = .Vertical
    }
    
    func itemWidth() -> CGFloat {
        return (CGRectGetWidth(collectionView!.frame)/2)-1
        //return 240
    }
    
    override var itemSize: CGSize {
        set {
            self.itemSize = CGSizeMake(itemWidth(), itemHeight)
        }
        get {
            return CGSizeMake(itemWidth(), itemHeight)
        }
    }
    
    override func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint) -> CGPoint {
        return collectionView!.contentOffset
    }
}

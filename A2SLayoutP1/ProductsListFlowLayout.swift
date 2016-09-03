//
//  ProductsListFlowLayout.swift
//  A2SLayoutP1
//
//  Created by admin on 9/3/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class ProductsListFlowLayout: UICollectionViewFlowLayout {
    // fix size
    let itemHeight: CGFloat = 240
    
    override init() {
        super.init()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setupLayout() {
        minimumInteritemSpacing = 0
        minimumLineSpacing = 1
        scrollDirection = .Vertical
    }
    
    func itemWidth() -> CGFloat {
        return CGRectGetWidth(collectionView!.frame)
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


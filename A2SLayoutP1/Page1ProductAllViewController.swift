//
//  Page1ProductAllViewController.swift
//  A2SLayoutP1
//
//  Created by admin on 8/31/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1ProductAllViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    let gridFlowLayout = ProductsGridFlowLayout()
    /// Flow layout that displays cells with a List layout, like in a tableView
    let listFlowLayout = ProductsListFlowLayout()
    
    /// True if the current flow layout is a grid
    var isGridFlowLayoutUsed: Bool = false {
        didSet {
            //listButton.alpha = (isGridFlowLayoutUsed == true) ? 0.9 : 1.0
            //gridButton.alpha = (isGridFlowLayoutUsed == true) ? 1.0 : 0.9
        }
    }
    
    @IBOutlet var gridButton: UIButton!
    @IBOutlet var listButton: UIButton!
    @IBOutlet weak var collectionView:UICollectionView!
    
    @IBAction func listButton(sender: AnyObject) {
        isGridFlowLayoutUsed = false
        collectionView.reloadData()
        print(isGridFlowLayoutUsed)
        UIView.animateWithDuration(0.2) { () -> Void in
            self.collectionView.collectionViewLayout.invalidateLayout()
            self.collectionView.setCollectionViewLayout(self.listFlowLayout, animated: true)
        }
    }
    
    @IBAction func gridButton(sender: AnyObject) {
        isGridFlowLayoutUsed = true
        collectionView.reloadData()
        UIView.animateWithDuration(0.2) { () -> Void in
            self.collectionView.collectionViewLayout.invalidateLayout()
            self.collectionView.setCollectionViewLayout(self.gridFlowLayout, animated: false)
        }
    }
    
    @IBAction func searchFilter(sender: AnyObject) {
        let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        
        let newProduct = UIAlertAction(title: "สินค้าล่าสุด", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("New")
        })
        
        let lowhightProduct = UIAlertAction(title: "ราคาต่ำ - สูง", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Hight")
        })
        
        let hightlowProduct = UIAlertAction(title: "ราคาสูง - ต่ำ", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Low")
        })
        
        let azProduct = UIAlertAction(title: "เรียงตามชื่อ A - Z", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("A - Z")
        })
        
        let zaProduct = UIAlertAction(title: "เรียงตามชื่อ Z - A", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Z - A")
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Cancelled")
        })
        
        optionMenu.addAction(newProduct)
        optionMenu.addAction(lowhightProduct)
        optionMenu.addAction(hightlowProduct)
        optionMenu.addAction(azProduct)
        optionMenu.addAction(zaProduct)
        optionMenu.addAction(cancelAction)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    
    func setupInitialLayout() {
        isGridFlowLayoutUsed = true
        collectionView.collectionViewLayout = gridFlowLayout
    }
    
    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        collectionView.collectionViewLayout.invalidateLayout()
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        //let cell0 = collectionView.dequeueReusableCellWithReuseIdentifier("tableCell0", forIndexPath: indexPath)
        //return cell0
        
        var tableCell:String!
        if isGridFlowLayoutUsed == true {
            tableCell = "tableCell0"
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(tableCell, forIndexPath: indexPath)// as! PhotoCollectionCell
            return cell
            
        } else {
            tableCell = "tableCell1"
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(tableCell, forIndexPath: indexPath)// as! PhotoCollectionCell
            return cell
        }

    }
    
    /*
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 375, height: 240)
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupInitialLayout()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

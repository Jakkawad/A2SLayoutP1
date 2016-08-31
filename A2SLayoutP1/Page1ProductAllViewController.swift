//
//  Page1ProductAllViewController.swift
//  A2SLayoutP1
//
//  Created by admin on 8/31/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1ProductAllViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView:UICollectionView!
    
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
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCellWithReuseIdentifier("tableCell0", forIndexPath: indexPath)
        return cell0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

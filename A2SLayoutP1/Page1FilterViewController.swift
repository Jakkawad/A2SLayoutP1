//
//  Page1FilterViewController.swift
//  A2SLayoutP1
//
//  Created by admin on 8/31/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1FilterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var sortArray:[String] = ["สินค้าล่าสุด", "ราคาต่ำ - สูง", "ราคาสูง - ต่ำ", "เรียงตามชื่อ A-Z", "เรียงตามชื่อ Z-A"]
    var categoryArray:[String] = []
    var ratingArray:[String] = []
    
    var sortSelected:String!
    var categorySubSelected:String!
    var ratingSelected:[String]!
    var priceStart:String!
    var priceEnd:String!

    @IBOutlet weak var tableView:UITableView!
    
    @IBAction func btnDone(sender: AnyObject) {
        delay(0.5) {
            self.tableView.reloadData()
            
            delay(0.2) {
                
                print("ArrayFilter = \(self.sortSelected)")
                print("Rating = \(self.ratingSelected)")
                print("Category = \(self.categorySubSelected)")
                print("PriceStart = \(self.priceStart)")
                print("PriceEnd = \(self.priceEnd)")
                
                self.dismissViewControllerAnimated(true, completion: nil)
                
            }
        }
        //self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
            if sortSelected != nil {
                cell0?.detailTextLabel?.text = sortSelected
            }
            return cell0!
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            if categorySubSelected != nil {
                cell1?.detailTextLabel?.text = categorySubSelected
            }
            return cell1!
        } else if indexPath.row == 2 {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2")
            var ratingText:String!
            ratingText = ""
            if(ratingSelected != nil){
                var i = 1
                for ratings in ratingSelected {
                    if(i == ratingSelected.count){
                        ratingText.appendContentsOf(ratings)
                    }else{
                        ratingText.appendContentsOf(ratings+",")
                    }
                    i += 1
                }
            }
            print(ratingText);
            cell2?.detailTextLabel?.text = ratingText
            return cell2!
        } else {
            let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3") as! Page1FilterCell3TableViewCell
            priceStart = cell3.priceStart
            priceEnd = cell3.priceEnd
            return cell3
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SortSegue" {
            print("Sort")
            let pageSort = segue.destinationViewController as! Page1SortViewController
            pageSort.sortArray = sortArray
        } else if segue.identifier == "CategorySegue" {
            print("Category")
        } else if segue.identifier == "RatingSegue" {
            print("Rating")
        } else {
            print("Segue Nil")
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}

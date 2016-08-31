//
//  Page1FilterViewController.swift
//  A2SLayoutP1
//
//  Created by admin on 8/31/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1FilterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var sortSelected:String!
    var categorySelected:String!
    var ratingSelected:[String]!
    var priceStart:Int!
    var priceEnd:Int!

    @IBOutlet weak var tableView:UITableView!
    
    @IBAction func btnDone(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
                cell0?.textLabel?.text = sortSelected
            }
            return cell0!
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            if categorySelected != nil {
                cell1?.textLabel?.text = categorySelected
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
            let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3")
            return cell3!
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

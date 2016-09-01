//
//  Page1DetailViewController.swift
//  A2SLayoutP1
//
//  Created by admin on 8/31/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else if section == 1 {
            return 2
        } else if section == 2 {
            return 2
        } else if section == 3 {
            return 1
        } else if section == 4 {
            return 3
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
                return cell0!
            } else {
                let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as! Page1DetailCell1TableViewCell
                return cell1
            }
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2")
                return cell2!
            } else {
                let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3")
                return cell3!
            }
        } else if indexPath.section == 2 {
            if indexPath.row == 0 {
                let cell4 = tableView.dequeueReusableCellWithIdentifier("tableCell4")
                return cell4!
            } else {
                let cell5 = tableView.dequeueReusableCellWithIdentifier("tableCell5")
                return cell5!
            }
        } else if indexPath.section == 3 {
            let cell6 = tableView.dequeueReusableCellWithIdentifier("tableCell6")
            return cell6!
        } else if indexPath.section == 4 {
            if indexPath.row == 0 {
                let cell7 = tableView.dequeueReusableCellWithIdentifier("tableCell7")
                return cell7!
            } else if indexPath.row == 1 {
                let cell8 = tableView.dequeueReusableCellWithIdentifier("tableCell8")
                return cell8!
            } else {
                let cell9 = tableView.dequeueReusableCellWithIdentifier("tableCell9")
                return cell9!
            }
        } else {
            let cell10 = tableView.dequeueReusableCellWithIdentifier("tableCell10")
            return cell10!
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                return 240
            } else {
                return 130
            }
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                return 100
            } else {
                return 30
            }
        } else if indexPath.section == 2 {
            if indexPath.row == 0 {
                return 90
            } else {
                return 30
            }
        } else if indexPath.section == 3 {
            return 130
        } else if indexPath.section == 4 {
            if indexPath.row == 0 {
                return 100
            } else {
                return 44
            }
        } else {
            return 224
        }
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat.min
        }
        return 0.5
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return ""
        } else if section == 1 {
            return "รายละเอียดสินค้า"
        } else if section == 2 {
            return "รีวิวสินค้า"
        } else if section == 3 {
            return ""
        } else if section == 4 {
            return "จัดจำหน่ายโดย"
        } else if section == 5 {
            return "สินค้าที่น่าใจของร้านนี้"
        } else {
            return "สินค้าที่น่าใจของร้านนี้"
        }
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

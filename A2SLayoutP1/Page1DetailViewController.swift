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
    
    @IBAction func showActionSheet(sender: AnyObject) {
        let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        
        let reportProduct = UIAlertAction(title: "รายงานสินค้านี้", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Delete")
        })
        
        let sharedProduct = UIAlertAction(title: "แชร์", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Shared")
        })
        
        let helpCenter = UIAlertAction(title: "ศูนย์ช่วยเหลือ", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Help")
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Cancelled")
        })
        
        optionMenu.addAction(reportProduct)
        optionMenu.addAction(sharedProduct)
        optionMenu.addAction(helpCenter)
        optionMenu.addAction(cancelAction)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 7
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 1
        } else if section == 3 {
            return 1
        } else if section == 4 {
            return 1
        } else if section == 5 {
            return 3
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? Page1DetailCell0TableViewCell
            return cell0!
        } else if indexPath.section == 1 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as? Page1DetailCell1TableViewCell
            return cell1!
        } else if indexPath.section == 2 {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2") as? Page1DetailCell2TableViewCell
            return cell2!
        } else if indexPath.section == 3 {
            let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3") as? Page1DetailCell3TableViewCell
            return cell3!
        } else if indexPath.section == 4 {
            let cell4 = tableView.dequeueReusableCellWithIdentifier("tableCell4") as? Page1DetailCell4TableViewCell
            return cell4!
        } else if indexPath.section == 5 {
            if indexPath.row == 0 {
                let cell5 = tableView.dequeueReusableCellWithIdentifier("tableCell5") as? Page1DetailCell5TableViewCell
                return cell5!
            } else if indexPath.row == 1 {
                let cell6 = tableView.dequeueReusableCellWithIdentifier("tableCell6") as? Page1DetailCell6TableViewCell
                return cell6!
            } else {
                let cell7 = tableView.dequeueReusableCellWithIdentifier("tableCell7") as? Page1DetailCell7TableViewCell
                return cell7!
            }
        } else {
            let cell8 = tableView.dequeueReusableCellWithIdentifier("tableCell8") as? Page1DetailCell8TableViewCell
            return cell8!
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 240
        } else if indexPath.section == 1 {
            return 130
        } else if indexPath.section == 2 {
            return 100
        } else if indexPath.section == 3 {
            return 120
        } else if indexPath.section == 4 {
            return 130
        } else if indexPath.section == 5 {
            if indexPath.row == 0 {
                return 100
            } else if indexPath.row == 1 {
                return 44
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
        return 20
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return ""
        } else if section == 1 {
            return ""
        } else if section == 2 {
            //return "Review"
            return "รายละเอียดสินค้า"
        } else if section == 3 {
            return "รีวิวสินค้า"
            //return "Payment"
        } else if section == 4 {
            return ""
            //return "Shop"
        } else if section == 5{
            return "จัดจำหน่ายโดย"
            //return ""
        } else {
            return "สินค้าที่น่าสนใจของร้านนี้"
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

/*
 
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
 
 */


/*
 
 if indexPath.section == 0 {
 let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? Page1DetailCell0TableViewCell
 return cell0!
 } else if indexPath.section == 1 {
 let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as? Page1DetailCell1TableViewCell
 return cell1!
 } else if indexPath.section == 2 {
 let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2") as? Page1DetailCell2TableViewCell
 return cell2!
 } else if indexPath.section == 3 {
 let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3") as? Page1DetailCell3TableViewCell
 return cell3!
 } else if indexPath.section == 4 {
 let cell4 = tableView.dequeueReusableCellWithIdentifier("tableCell4") as? Page1DetailCell4TableViewCell
 return cell4!
 } else if indexPath.section == 5 {
 let cell5 = tableView.dequeueReusableCellWithIdentifier("tableCell5") as? Page1DetailCell5TableViewCell
 return cell5!
 } else {
 let cell6 = tableView.dequeueReusableCellWithIdentifier("tableCell6") as? Page1DetailCell6TableViewCell
 return cell6!
 }
 */

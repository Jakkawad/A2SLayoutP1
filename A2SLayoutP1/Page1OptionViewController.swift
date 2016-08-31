//
//  Page1OptionViewController.swift
//  A2SLayoutP1
//
//  Created by admin on 8/31/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1OptionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var option1Array = []
    var option2Array = []
    var option3Array = []
    var option4Array = []
    var option5Array = []
    var option1Selected:String!
    var option2Selected:String!
    var option3Selected:String!
    var option4Selected:String!
    var option5Selected:String!
    

    @IBOutlet weak var tableView:UITableView!
    
    @IBAction func btnDone(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }
    
    @IBAction func unwindOption1(segue:UIStoryboardSegue) {
        if let pageOption1 = segue.sourceViewController as? Page1OptionSelect1ViewController {
            let index = pageOption1.tableView.indexPathForSelectedRow
            let cell = pageOption1.tableView.cellForRowAtIndexPath(index!)
            let option1 = cell?.textLabel?.text
            option1Selected = option1
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let option = 3
    
        if section == 0 {
            return 1
        } else if section == 1 {
            return option
        } else if section == 2 {
            return 1
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
            return cell0!
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
                if option1Selected != nil {
                    cell1?.detailTextLabel?.text = option1Selected
                }
                return cell1!
            } else if indexPath.row == 1 {
                let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2")
                return cell2!
            } else if indexPath.row == 2 {
                let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3")
                return cell3!
            } else if indexPath.row == 3 {
                let cell4 = tableView.dequeueReusableCellWithIdentifier("tableCell4")
                return cell4!
            } else {
                let cell5 = tableView.dequeueReusableCellWithIdentifier("tableCell5")
                return cell5!
            }
        } else if indexPath.section == 2 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell6")
            return cell0!
        } else {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell7")
            return cell0!
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 70
        } else {
            return 44
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
        if segue.identifier == "Option1Segue" {
            let option1Page = segue.destinationViewController as! Page1OptionSelect1ViewController
            option1Array = ["1", "2", "3"]
            option1Page.option1Array = option1Array
            print("Option1")
        } else if segue.identifier == "Option2Segue" {
            print("Option2")
        } else if segue.identifier == "Option3Segue" {
            print("Option3")
        } else if segue.identifier == "Option4Segue" {
            print("Option4")
        } else if segue.identifier == "Option5Segue" {
            print("Option5")
        } else {
            print("Other")
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}

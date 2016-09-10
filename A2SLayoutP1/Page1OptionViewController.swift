//
//  Page1OptionViewController.swift
//  A2SLayoutP1
//
//  Created by admin on 8/31/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import FMDB

class Page1OptionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    var database:FMDatabase!
    
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
    
    var quilty:String!
    var total:String!
    

    @IBOutlet weak var tableView:UITableView!
    
    @IBAction func btnDone(sender: AnyObject) {
        
        print("Option1 \(option1Selected)")
        print("Option2 \(option2Selected)")
        print("Option3 \(option3Selected)")
        print("Option4 \(option4Selected)")
        print("Option5 \(option5Selected)")
        print("Quilty \(quilty)")
        print("total \(total)")
        self.navigationController?.popViewControllerAnimated(true)
        /*
        if !database.executeUpdate("INSERT INTO cart(product_id) VALUES(?)", withArgumentsInArray:[quilty] ) {
            print("insert fail \(database.lastErrorMessage())")
        }
        */
        
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
    
    @IBAction func unwindOption2(segue:UIStoryboardSegue) {
        if let pageOption2 = segue.sourceViewController as? Page1OptionSelect2ViewController {
            let index = pageOption2.tableView.indexPathForSelectedRow
            let cell = pageOption2.tableView.cellForRowAtIndexPath(index!)
            let option2 = cell?.textLabel?.text
            option2Selected = option2
            
        }
    }
    
    @IBAction func unwindOption3(segue:UIStoryboardSegue) {
        if let pageOption3 = segue.sourceViewController as? Page1OptionSelect3ViewController {
            let index = pageOption3.tableView.indexPathForSelectedRow
            let cell = pageOption3.tableView.cellForRowAtIndexPath(index!)
            let option3 = cell?.textLabel?.text
            option3Selected = option3
        }
    }
    
    @IBAction func unwindOption4(segue:UIStoryboardSegue) {
        if let pageOption4 = segue.sourceViewController as? Page1OptionSelect4ViewController {
            let index = pageOption4.tableView.indexPathForSelectedRow
            let cell = pageOption4.tableView.cellForRowAtIndexPath(index!)
            let option4 = cell?.textLabel?.text
            option4Selected = option4
        }
    }
    
    @IBAction func unwindOption5(segue:UIStoryboardSegue) {
        if let pageOption5 = segue.sourceViewController as? Page1OptionSelect5ViewController {
            let index = pageOption5.tableView.indexPathForSelectedRow
            let cell = pageOption5.tableView.cellForRowAtIndexPath(index!)
            let option5 = cell?.textLabel?.text
            option5Selected = option5
        }
    }
    
    // FMDB
    func openDB() {
        let documentsFolder = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
        let path = documentsFolder.stringByAppendingString("/shoppingcart_db.db")
        print("DB Path \(path)")
        let fileManager = NSFileManager()
        if (!fileManager.fileExistsAtPath(path)) {
            let dbFilePath = NSBundle.mainBundle().pathForResource("shoppingcart_db", ofType: "db")!
            do {
                try fileManager.copyItemAtPath(dbFilePath, toPath: path)
            } catch {
                print("Error")
            }
        }
        self.database = FMDatabase(path: path)
        self.database.open()
        
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
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? Page1OptionCell0TableViewCell
            
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
                if option2Selected != nil {
                    cell2?.detailTextLabel?.text = option2Selected
                }
                return cell2!
            } else if indexPath.row == 2 {
                let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3")
                if option3Selected != nil {
                    cell3?.detailTextLabel?.text = option3Selected
                }
                return cell3!
            } else if indexPath.row == 3 {
                let cell4 = tableView.dequeueReusableCellWithIdentifier("tableCell4")
                if option4Selected != nil {
                    cell4?.detailTextLabel?.text = option4Selected
                }
                return cell4!
            } else {
                let cell5 = tableView.dequeueReusableCellWithIdentifier("tableCell5")
                if option5Selected != nil {
                    cell5?.detailTextLabel?.text = option5Selected
                }
                return cell5!
            }
        } else if indexPath.section == 2 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell6") as! Page1OptionCell6TableViewCell
            //quilty = String(cell0.quilty)
            cell0.txtQuilty.delegate = self
            return cell0
        } else {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell7")
            cell0?.detailTextLabel?.text = quilty
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
    
    // TextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("TextField should and editing method called")
        print(textField)
        quilty = textField.text
        print("Quilty = \(quilty)")
        delay(0.5) {
            self.tableView.reloadData()
        }
        return true
    }

    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        openDB()
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
            let option2Page = segue.destinationViewController as! Page1OptionSelect2ViewController
            option2Array = ["4", "5", "6"]
            option2Page.option2Array = option2Array
            print("Option2")
        } else if segue.identifier == "Option3Segue" {
            let option3Page = segue.destinationViewController as! Page1OptionSelect3ViewController
            option3Array = ["7", "8", "9"]
            option3Page.option3Array = option3Array
            print("Option3")
        } else if segue.identifier == "Option4Segue" {
            let option4Page = segue.destinationViewController as! Page1OptionSelect4ViewController
            option4Array = ["10", "11", "12"]
            option4Page.option4Array = option4Array
            print("Option4")
        } else if segue.identifier == "Option5Segue" {
            let option5Page = segue.destinationViewController as! Page1OptionSelect5ViewController
            option5Array = ["13", "14", "15"]
            option5Page.option5Array = option5Array
            print("Option5")
        } else {
            print("Other")
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}

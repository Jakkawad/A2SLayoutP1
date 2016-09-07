//
//  Page2StartViewController.swift
//  A2SLayoutP1
//
//  Created by admin on 9/3/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import FMDB

class Page2StartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var database:FMDatabase!
    
    var cartArray:[[String:String]] = []

    @IBOutlet weak var tableView:UITableView!
    
    func openDB() {
        let documentsFolder = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
        let path = documentsFolder.stringByAppendingString("/shoppingcart_db.db")
        let fileManager = NSFileManager()
        if (!fileManager.fileExistsAtPath(path)) {
            let dbFilePath = NSBundle.mainBundle().pathForResource("shoppingcart_db", ofType: "db")!
            do {
                try fileManager.copyItemAtPath(dbFilePath, toPath: path)
            } catch {
                
            }
        }
        self.database = FMDatabase(path: path)
        self.database.open()
        self.query()
    }
    
    func query() {
        self.cartArray.removeAll()
        if let rs = database.executeQuery("SELECT * FROM cart", withArgumentsInArray: nil) {
            while rs.next() {
                let cart_id = rs.stringForColumn("cart_id")
                let product_id = rs.stringForColumn("product_id")
                let user_id = rs.stringForColumn("user_id")
                let shop_id = rs.stringForColumn("shop_id")
                let datetime = rs.stringForColumn("datetime")
                let option1 = rs.stringForColumn("option1")
                let option2 = rs.stringForColumn("option2")
                let option3 = rs.stringForColumn("option3")
                let option4 = rs.stringForColumn("option4")
                let option5 = rs.stringForColumn("option5")
                let quilty = rs.stringForColumn("quilty")
                let price = rs.stringForColumn("price")
                let item:[String:String] = ["cart_id":cart_id, "datetime":datetime, "option1":option1, "quilty":quilty, "price":price]
                //let item:[String:String] = ["cart_id":cart_id, "product_id":product_id, "user_id":user_id, "shop_id":shop_id, "datetime":datetime, "option1":option1, "option2":option2, "option3":option3, "option4":option4, "option5":option5, "quilty":quilty, "price":price]
                self.cartArray.append(item)
            }
            self.tableView.reloadData()
            print(cartArray)
        } else {
            print("SELECT FAIL")
        }
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
        let item = cartArray[indexPath.row]
        cell0?.textLabel?.text = item["cart_id"]
        cell0?.detailTextLabel?.text = item["quilty"]
        return cell0!
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            let which = self.cartArray[indexPath.row]["cart_id"]
            self.deleteRow(which!)
        }
    }
    
    func deleteRow(whichArg:String) {
        if !database.executeUpdate("DELETE FROM cart WHERE cart_id = ?", withArgumentsInArray: [whichArg]) {
            print("DELETE FAIL \(database.lastErrorMessage())")
        }
        self.query()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        openDB()
        
        do {
            try database.executeUpdate("INSERT INTO cart(product_id,user_id,shop_id,option1,quilty,price) VALUES(?,?,?,?,?,?)", values: ["3230","3378","3268","Size:XL","10","1000"])
            
        } catch let error as NSError {
            print(error)
        }
        self.tableView.reloadData()
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

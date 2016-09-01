//
//  Page1FilterCell3TableViewCell.swift
//  A2SLayoutP1
//
//  Created by admin on 9/1/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1FilterCell3TableViewCell: UITableViewCell, UITextFieldDelegate {
    
    var priceStart:String!
    var priceEnd:String!
    
    @IBOutlet weak var txtPriceStart:UITextField!
    @IBOutlet weak var txtPriceEnd:UITextField!

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("TextField should and editing method called")
        priceStart = txtPriceStart.text
        priceEnd = txtPriceEnd.text
        return true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        txtPriceStart.keyboardType = UIKeyboardType.NumberPad
        txtPriceEnd.keyboardType = UIKeyboardType.NumberPad
        
        // Initialization code
    }


    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  Page1OptionCell6TableViewCell.swift
//  A2SLayoutP1
//
//  Created by admin on 9/6/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1OptionCell6TableViewCell: UITableViewCell {

    @IBOutlet weak var txtQuilty:UITextField!
    
    var quilty:String!
    
    /*
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("TextField should and editing method called")
        print(textField)
        quilty = txtTotal.text
        return true
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        
        txtQuilty.keyboardType = UIKeyboardType.NumberPad
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

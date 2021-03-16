//
//  TableViewCell.swift
//  HW3
//
//  Created by Алеся Ландарь on 08.03.2021.
//

import UIKit

protocol MyCellProtocol {
    func buttonIsPressed(text: String)
}

class TableViewCell: UITableViewCell, UITextFieldDelegate {
    

    @IBOutlet weak var answerFirst: UITextField!
    
    @IBOutlet weak var label1: UILabel!
    
    var delegate: MyCellProtocol!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
 
   
    @IBAction func sendButton1(_ sender: UIButton) {
        
        let positiveAnswer = "YES"
        let negativeAnswer = "NO"
        let value: String = answerFirst.text!
        if value == positiveAnswer {
        label1.text = "YOU ARE COOL"
        } else if value == negativeAnswer{
            label1.text = "YOU ARE A BAD BOY"
        } else {
            label1.text = "TYPE YES or NO"
        }
    }
    

    @IBAction func getTEXT(_ sender: UITextField) {
       
    }
}

//
//  ViewController.swift
//  HW3
//
//  Created by Алеся Ландарь on 07.03.2021.
//

import UIKit

//protocol MyProtocolDelegate {
//    func changeColorOfBackground()
//}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var questionsDictionary = [0 : "Do you believe in true love?",
                               1 : "Do you play board games?",
                               2 : "You are not a lazy person, are you?",
                               3 : "Do you like sweets?",
                               4 : "Do you also afraid of spiders?"]
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var askMeLabel: UILabel!
    
//    var delegate: MyProtocolDelegate?

    

    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.layer.cornerRadius = 50
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
//        cell.delegate = self
        cell.label1.text = questionsDictionary[indexPath.row]
        
        return cell
        
     
        
    }
    
//    func buttonIsPressed(text: String) {
//        let positiveAnswer = "YES"
//        let negativeAnswer = "NO"
//        let value: String = text
//        if value == positiveAnswer {
//        label1.text = "YOU ARE COOL"
//        } else if value == negativeAnswer{
//            label1.text = "YOU ARE A BAD BOY"
//        } else {
//            label1.text = "TYPE YES or NO"
//        }
//    }

   

}


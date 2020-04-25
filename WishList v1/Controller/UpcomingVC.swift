//
//  UpcomingVC.swift
//  WishList v1
//
//  Created by Emily Thompson on 4/4/20.
//  Copyright © 2020 Emily Thompson. All rights reserved.
//
import Foundation
import UIKit

class UpcomingVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    @IBOutlet weak var newItemTextField: UITextField!
    var upcomingItems: [String] = [""]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = upcomingItems[indexPath.row]
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            self.upcomingItems.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        configureTextFields()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func configureTextFields() {
        newItemTextField.delegate = self
    }
}

    extension UpcomingVC: UITextFieldDelegate {
        // When user press the return key in keyboard
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            upcomingItems.append(newItemTextField.text!)
            textField.resignFirstResponder()
            return true
        }
   
        // It is called when text field is inactive
        func textFieldDidEndEditing(_ textField: UITextField) {
            textField.text = ""
            myTableView.reloadData()
        }
        
    
    }
    


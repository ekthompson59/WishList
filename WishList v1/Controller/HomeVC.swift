//
//  ViewController.swift
//  WishList v1
//
//  Created by Emily Thompson on 4/4/20.
//  Copyright © 2020 Emily Thompson. All rights reserved.
//
import Foundation
import UIKit

class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func upcomingButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "upcomingButtonPressed", sender: self)
    }
    
}
    


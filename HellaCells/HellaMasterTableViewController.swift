//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Enrique Torrendell on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UIViewController {

    
    @IBOutlet weak var numberLabel: UILabel!
    
    var number: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let number = number {
            numberLabel?.text = String(number)
            navigationItem.title = String(number)
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

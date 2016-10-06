//
//  ViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createNumbers()
        print(numbers)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var numbers: [Int] = []
    
    
    func createNumbers() {
        for i in 1...100 {
            numbers.append(i)
            
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellDetail", for: indexPath)
        
        let nameCell = numbers[indexPath.row]
        cell.textLabel?.text = String(nameCell)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "segueDetail" { return }
        if let dest = segue.destination as? HellaMasterTableViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.number = numbers[indexPath.row]
        }
    }
    
    
    
    
    
    
    
    
    
    
    

}


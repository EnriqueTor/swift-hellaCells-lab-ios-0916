//
//  NumberTableViewController.swift
//  HellaCells
//
//  Created by Enrique Torrendell on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class NumberTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    var numbers: [Int] = [1,2,3,4,5,6,7,8,9,10]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numbers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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

//
//  MyCustomTableViewController.swift
//  TableView
//
//  Created by Sam Meech-Ward on 2016-11-17.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

import UIKit

class MyCustomTableViewController: UITableViewController {
    
    var selfies = [UIImage]()
    
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

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selfies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyCustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "custom-cell", for: indexPath) as! MyCustomTableViewCell

        // Setup variables
        let rowNumber = indexPath.row
        let image = selfies[rowNumber]
        let text = "Selfie \(rowNumber)"
        
        
        // Update cell
        cell.myCustomImageView.image = image
        cell.myCustomLabel.text = text

        return cell
    }
 

    
    @IBAction func addSelfie1(_ sender: Any) {
        selfies.append(#imageLiteral(resourceName: "selfie1"))
        
        let indexPath = IndexPath(row: selfies.count-1, section: 0)
        self.tableView.insertRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        
        print("addSelfie1 \(selfies.count)")
    }
    
    @IBAction func addSelfie2(_ sender: Any) {
        selfies.append(#imageLiteral(resourceName: "selfie2"))
        self.tableView.reloadData()
        
        print("addSelfie2 \(selfies.count)")
    }
 

}

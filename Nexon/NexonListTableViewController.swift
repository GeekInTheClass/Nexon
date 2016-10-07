        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.//
//  NexonListTableViewController.swift
//  Nexon
//
//  Created by Mac20 on 2016. 10. 7..
//  Copyright © 2016년 Mac20. All rights reserved.
//

import UIKit

class NexonListTableViewController: UITableViewController {
    
    var Nexon: [String:Int] = ["Maple":1, "Baram":20, "Crazy":15]
    
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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Nexon.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)

        let gameNames = Array(Nexon.keys)
        let gameName = gameNames[indexPath.row]
        cell.textLabel!.text = gameName
        if let capacity:Int = Nexon[gameName]
        {
            cell.detailTextLabel!.text = "\(capacity)"
        }
        return cell
    }
 
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController = segue.destinationViewController as! ViewController
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        let gameNames = Array(Nexon.keys)
        DestViewController.FirstString = gameNames[indexPath.row]
    }
 

}

//
//  DeptTableViewController.swift
//  Assignment
//
//  Created by Tsztung Wong on 6/10/2019.
//  Copyright © 2019 16219007. All rights reserved.
//

import UIKit

class DeptTableViewController: UITableViewController {

    struct deptInfo {
        
        var name:String
        var dept_id:String
        
    }
    
    var deptArray = [deptInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deptArray.append( deptInfo(name: "Computer Science", dept_id: "COMP" ) )
        
        deptArray.append( deptInfo(name: "Communcation", dept_id: "COMS" ) )
        
        deptArray.append( deptInfo(name: "Arts", dept_id: "ARTS" ) )
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return deptArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "deptCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = deptArray[indexPath.row].name

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showEvent" {
            
            if let viewController = segue.destination as? EventTableViewController {
                
                var selectedIndex = tableView.indexPathForSelectedRow!
                
                viewController.dept_id = deptArray[selectedIndex.row].dept_id
                
                
            }
        }
    }


}

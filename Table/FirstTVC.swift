//
//  FirstTVC.swift
//  Table
//
//  Created by Student on 22/10/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class FirstTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //self.tableView.rowHeight = 100.0
        //tableView.estimatedRowHeight = UITableView.automaticDimension
    }
    
    /*
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return UITableView.automaticDimension
    }
 */

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = self.cellIDForIndexPath(indexPath)
        
        switch cellID {
            case "firstCell":
                let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! FirstCell;
                cell.configureWithData(desc: "Test", title: "Title")
                return cell;
            case "secondCell":
                let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! SecondCell;
                cell.configureWithData(info: "Information")
                return cell;
        default:
                let cell = UITableViewCell()
                return cell
        }
        
        
        /*
        //var cell = tableView.dequeueReusableCell(withIdentifier:"cell")
       
        if (cell == nil) {
            switch cellID {
                case "firstCell":
                    cell = FirstCell.init(style: .default, reuseIdentifier: "firstCell")
                    (cell as! FirstCell).configureWithData(desc: "Test", title: "Title")
                    return cell;
                case "secondCell":
                    cell = SecondCell.init(style: .default, reuseIdentifier: "secondCell")
                    (cell as! SecondCell).configureWithData(info: "Information")
                    return cell;
            default:
                    cell = UITableViewCell()
            }
        }
        */
        
    }
    
    func cellIDForIndexPath(_ iP: IndexPath) -> String{
        let i = iP.row
        if (i % 2 == 0){
            return "firstCell"
        }else{
            return "secondCell"
            
        }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  PlaceTableViewController.swift
//  JapanLover
//
//  Created by ict on 11/30/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class PlaceTableViewController: UITableViewController {

    var myPlaceInfoList : [PlaceInfo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "แนะนำสถานที่ท่องเที่ยว"
        
        let myPlace1 : PlaceInfo = PlaceInfo(placeName: "Mount Fuji", placeImg : UIImage(named: "1.png")!)
        let myPlace2 : PlaceInfo = PlaceInfo(placeName: "Tokyo Tower", placeImg : UIImage(named: "2.png")!)
        let myPlace3: PlaceInfo = PlaceInfo(placeName: "Tokyo Disnryland", placeImg : UIImage(named: "3.png")!)
        let myPlace4 : PlaceInfo = PlaceInfo(placeName: "Himeji Castle", placeImg : UIImage(named: "4.png")!)
        let myPlace5 : PlaceInfo = PlaceInfo(placeName: "Universal Studios Japan", placeImg : UIImage(named: "5.png")!)
        let myPlace6 : PlaceInfo = PlaceInfo(placeName: "Sensoji Temple", placeImg : UIImage(named: "6.png")!)
        
        myPlaceInfoList.append(myPlace1)
        myPlaceInfoList.append(myPlace2)
        myPlaceInfoList.append(myPlace3)
        myPlaceInfoList.append(myPlace4)
        myPlaceInfoList.append(myPlace5)
        myPlaceInfoList.append(myPlace6)
        
        navigationController?.navigationBar.barTintColor = UIColor.red
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myPlaceInfoList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...

        cell.imageView?.image = myPlaceInfoList[indexPath.row].placeImg
        cell.textLabel?.text = "\(myPlaceInfoList[indexPath.row].placeName)"
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        
        let indexPath = self.tableView.indexPathForSelectedRow!
        let detailVC = segue.destination as! PlaceViewController
        detailVC.myPlaceInfo = myPlaceInfoList[indexPath.row]
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}

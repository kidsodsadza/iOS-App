//
//  MainTableViewController.swift
//  MyContactListApp
//
//  Created by ict on 11/2/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    var myContactInfoList : [ContactInformation] = []
    override var prefersStatusBarHidden: Bool {
        return false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //กำหนดข้อความไว้ในส่วนของ Navigation
        self.title = "My Contact List"
        //เตรียมข้อมูล ContactInformation
        let myFriend1 : ContactInformation = ContactInformation(contactName : "สรวัชญ์  ตันอร่าม", contactNickName : "ฟลุ๊คกี้", contactPhoneNumber: "095-5751594", contactType : 0, contactPublicType: 0, contactImage: UIImage(named: "b1.png")!)
        let myFriend2 : ContactInformation = ContactInformation(contactName : "กรณ์วรรษธร บุญยะเจริญจิตร์", contactNickName : "เจมคุง", contactPhoneNumber: "095-5751594", contactType : 1, contactPublicType: 0, contactImage: UIImage(named: "b1.png")!)
        let myFriend3 : ContactInformation = ContactInformation(contactName : "ณัฐดนัย วิริยะศาสตร์", contactNickName : "แม็กกี้ชาน", contactPhoneNumber: "095-5751594", contactType : 2, contactPublicType: 1, contactImage: UIImage(named: "b1.png")!)
        let myFriend4 : ContactInformation = ContactInformation(contactName : "นัฐพล ขันธ์ทอง", contactNickName : "เต๋าดิญโญ่", contactPhoneNumber: "095-5751594", contactType : 3, contactPublicType: 1, contactImage: UIImage(named: "b2.png")!)
        
        myContactInfoList.append(myFriend1)
        myContactInfoList.append(myFriend2)
        myContactInfoList.append(myFriend3)
        myContactInfoList.append(myFriend4)
        
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
        return myContactInfoList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        cell.imageView?.image = myContactInfoList[indexPath.row].contactImage
        cell.textLabel?.text = "\(myContactInfoList[indexPath.row].contactName)(\(myContactInfoList[indexPath.row].contactNickName))"
        cell.detailTextLabel?.text = myContactInfoList[indexPath.row].contactPhoneNumber
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
 

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        if editingStyle == .delete {
            myContactInfoList.remove(at: IndexPath.row)
            tableView.deleteRows(at: <#T##[IndexPath]#>, with: .fade)
        }
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
        let detailVC = segue.destination as! ViewController
        detailVC.myContactInfo = myContactInfoList[indexPath.row]
    }
    

}

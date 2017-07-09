//
//  ViewController.swift
//  MyShopppingListApp
//
//  Created by Fareda Youngpaknum on 11/16/2559 BE.
//  Copyright © 2559 Fareda Youngpaknum. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource,UITableViewDelegate{
    
    var myGroceryList = ["นมสด 2 ลิตร","ครีมชีส","นํ้าตาลไอซิ่ง","วิปปิ้งครีม","ผงเยลลี่","เนยสด"]
    var checkGroceryList = [false,false,false,false,false,false]
    var myGadgetList = ["iPad Pro","Apple Pencil","หูฟัง Bose","Conon DSLR"]
    var checkGadgetList = [false,false,false,false]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "My shopping List"
        myTableView.dataSource = self
        myTableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if section == 0 {
            return myGroceryList.count
        }else{
            return myGadgetList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath)
        
        //Configure the cell...
        if indexPath.section == 0{
            cell.textLabel!.text = myGroceryList[indexPath.row]
            if checkGroceryList[indexPath.row] == true {
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
        }else{
            cell.textLabel!.text = myGadgetList[indexPath.row]
            if checkGadgetList[indexPath.row] == true {
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView:UITableView, didSelectRowAt indexPath: IndexPath){
        let myCell = tableView.cellForRow(at: indexPath)!
        
        print("\(indexPath.section) - \(indexPath.row)")
        print(myCell.textLabel!.text!)
        
       /* if myCell.accessoryType == .checkmark {
            myCell.accessoryType = .none
        }else{
            myCell.accessoryType = .checkmark
        }*/
        
        if indexPath.section == 0 {
            checkGroceryList[indexPath.row] = !checkGroceryList[indexPath.row]
            if checkGroceryList[indexPath.row] {
                myCell.accessoryType = .checkmark
            }else{
                myCell.accessoryType = .none
            }
        }else{
            checkGadgetList[indexPath.row] = !checkGadgetList[indexPath.row]
            if checkGadgetList[indexPath.row] {
                myCell.accessoryType = .checkmark
            }else{
                myCell.accessoryType = .none
            }
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection secion:Int) -> String?{
        if secion == 0 {
            return "รายการอาหาร"
        }else{
            return "รายการอุปกรณ์ Gadget"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


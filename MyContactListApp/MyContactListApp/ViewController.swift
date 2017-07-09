//
//  ViewController.swift
//  MyContactListApp
//
//  Created by ict on 10/26/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var myContactInfo : ContactInformation = ContactInformation()
    let contactType = ["ครอบครัว","เพื่อนสมัยเรียน","เพื่อนร่วมงาน","ลูกค้าและสถานประกอบการ"]
    let publicType = ["ส่วนตัว","ที่ทำงาน"]
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtNickName: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    @IBOutlet weak var pickerViewContactType: UIPickerView!
    
    @IBAction func ClearMethod() {
        txtName.text = ""
        txtNickName.text = ""
        txtPhoneNumber.text = ""
        pickerViewContactType.selectRow(0, inComponent: 0, animated: true)
        pickerViewContactType.selectRow(0, inComponent: 1, animated: true)
    }
    @IBAction func saveContactInfoMethod() {
        let myContactType = contactType[pickerViewContactType.selectedRow(inComponent: 0)]
        let myPublicType = contactType[pickerViewContactType.selectedRow(inComponent: 1)]
        print("COntact Saved Successfully!!!!")
        print("ชื่อ-นามสกุล : \(txtName.text!)")
        print("ชื่อเล่น : \(txtNickName.text!)")
        print("เบอร์โทร : \(txtPhoneNumber.text!)")
        print("ประเภท Contact : \(myContactType)-\(myPublicType))")
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if component == 0{
            return contactType.count
        }
        else{
            return publicType.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50.0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return contactType[row]
        }
        else{
            return publicType[row]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = myContactInfo.contactNickName
        pickerViewContactType.dataSource = self
        pickerViewContactType.delegate = self
        
        txtName.text = myContactInfo.contactName
        txtNickName.text = myContactInfo.contactNickName
        txtPhoneNumber.text = myContactInfo.contactPhoneNumber
        
        pickerViewContactType.selectRow(2, inComponent: 0, animated:true)
        pickerViewContactType.selectRow(1, inComponent: 1, animated:true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


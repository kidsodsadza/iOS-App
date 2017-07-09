//
//  exChangeViewController.swift
//  JapanLover
//
//  Created by ict on 11/30/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class exChangeViewController: UIViewController {

    var money : Double = 0
    
    @IBOutlet weak var inputMoney: UITextField!
    @IBAction func calculateData(_ sender: UIButton) {
        
        if inputMoney.text != nil {
             money  = Double(inputMoney.text!)!*30/100
        }
        
        let alertController = UIAlertController(title:"Spending in Japan",message:"เท่ากับ \(money) บาท", preferredStyle: .alert)
        let okButton = UIAlertAction(title:"OK", style: .cancel, handler: nil)
        alertController.addAction(okButton)
        
        self.present(alertController, animated: true, completion:  nil)
    }
    @IBAction func ClearData(_ sender: UIButton) {
        inputMoney.text = ""
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
        override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "คํานวณอัตราการแลกเปลี่ยน"
            navigationController?.navigationBar.barTintColor = UIColor.red
            navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

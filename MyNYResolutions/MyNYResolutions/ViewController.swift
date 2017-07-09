//
//  ViewController.swift
//  MyNYResolutions
//
//  Created by ict on 8/24/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeBackgroudColorToBlack(sender : UIButton){
        view.backgroundColor = UIColor.black
    }
    @IBAction func changeBackgroudColorToWhite(sender : UIButton){
        view.backgroundColor = UIColor.white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


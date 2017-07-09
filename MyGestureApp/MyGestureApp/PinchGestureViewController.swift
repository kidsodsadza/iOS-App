//
//  PinchGestureViewController.swift
//  MyGestureApp
//
//  Created by ict on 11/16/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class PinchGestureViewController: UIViewController {

    @IBAction func handlePinchMethod(_ sender: AnyObject) {
        let myPinchObject = sender as! UIPinchGestureRecognizer
        myPinchObject.view!.transform = myPinchObject.view!.transform.scaledBy(x: myPinchObject.scale, y: myPinchObject.scale)
        myPinchObject.scale = 1
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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

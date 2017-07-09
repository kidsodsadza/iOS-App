//
//  RotationGestureViewController.swift
//  MyGestureApp
//
//  Created by ict on 11/16/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class RotationGestureViewController: UIViewController {

    @IBAction func handleRotationMethod(_ sender: AnyObject) {
        let myRotationObject = sender as! UIRotationGestureRecognizer
        myRotationObject.view!.transform = myRotationObject.view!.transform.rotated(by: myRotationObject.rotation)
        myRotationObject.rotation = 0
        
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

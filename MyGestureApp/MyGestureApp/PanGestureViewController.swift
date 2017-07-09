//
//  PanGestureViewController.swift
//  MyGestureApp
//
//  Created by ict on 11/16/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class PanGestureViewController: UIViewController {

    @IBAction func handlePanMethood(_ sender: AnyObject) {
        let  myPanObject = sender as! UIPanGestureRecognizer
        let  transletion = myPanObject.translation(in: self.view)
        myPanObject.view?.center = CGPoint(x:myPanObject.view!.center.x + transletion.x,y:myPanObject.view!.center.y + transletion.y)
        myPanObject.setTranslation(CGPoint.zero, in: self.view)
        
        
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

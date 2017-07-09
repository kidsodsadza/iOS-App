//
//  RocketAnimationViewController.swift
//  MybasicMathGame
//
//  Created by ict on 9/28/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class RocketAnimationViewController: UIViewController {

    @IBOutlet weak var myRocketView: UIImageView!
    
    @IBAction func backToMainMethod() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myRocketImageList : [UIImage] = []
        for i in 1...36 {
            let imgFilename = "myrocket\(i).png"
            let vImage = UIImage(named:imgFilename)
            myRocketImageList.append(vImage!)
            
        }
        myRocketView.animationImages = myRocketImageList
        
        myRocketView.animationDuration = TimeInterval (2)
        
        myRocketView.startAnimating()
        

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

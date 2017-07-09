//
//  TapGestureViewController.swift
//  MyGestureApp
//
//  Created by ict on 11/16/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class TapGestureViewController: UIViewController {
    let imageList = ["1.png","2.png","3.png","4.png","5.png"]
    var currentImage : Int = 0
    
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    @IBAction func handleTapMethod(_ sender: AnyObject) {
        currentImage += 1
        if currentImage > 4{
            currentImage = 0
        }
        myImage.image = UIImage(named: imageList[currentImage])
        
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

//
//  PlaceViewController.swift
//  JapanLover
//
//  Created by ict on 11/30/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class PlaceViewController: UIViewController {

    @IBOutlet weak var Placeimage: UIImageView!
    @IBOutlet weak var textTitle: UILabel!
    
    var myPlaceInfo : PlaceInfo = PlaceInfo()
    override func viewDidLoad() {
        super.viewDidLoad()
        Placeimage.image = myPlaceInfo.placeImg
        textTitle.text = myPlaceInfo.placeName
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

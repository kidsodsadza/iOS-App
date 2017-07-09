//
//  ViewController.swift
//  RateMyStudents
//
//  Created by ict on 9/14/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let student1 : Student = Student(StudentName: "Kid",StudentLastname: "1412",StudentRatingScore: 100,StudentImage:UIImage(named: "student1.png")!)
    let student2 : Student = Student(StudentName: "Tao",StudentLastname: "Za555",StudentRatingScore: 50,StudentImage:UIImage(named: "student2.png")!)
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    
    @IBOutlet weak var lblName1: UILabel!
    @IBOutlet weak var lblName2: UILabel!
    
    @IBOutlet weak var lblScore1: UILabel!
    @IBOutlet weak var lblScore2: UILabel!
    
  
    @IBAction func updateScore1() {
    }
    
    @IBAction func updateScore2() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //เตรียมข้อมูลนักเรียนคนที่ 1
        imgView1.image = student1.StudentImage
        lblName1.text = "\(student1.StudentName) \(student1.StudentLastname)"
        lblScore1.text = "\(student1.StudentRatingScore)"
        
        //เตรียมข้อมูลนักเรียนคนที่ 2
        imgView2.image = student2.StudentImage
        lblName2.text = "\(student2.StudentName) \(student2.StudentLastname)"
        lblScore2.text = "\(student2.StudentRatingScore)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


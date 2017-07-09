//
//  Student.swift
//  RateMyStudents
//
//  Created by ict on 9/14/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class Student: NSObject {
    var StudentName : String
    var StudentLastname : String
    var StudentRatingScore :Int
    var StudentImage : UIImage
    
    init(StudentName : String,StudentLastname : String,StudentRatingScore :Int,
         StudentImage : UIImage)
    {
        
        self.StudentName = StudentName
        self.StudentLastname = StudentLastname
        self.StudentRatingScore = StudentRatingScore
        self.StudentImage = StudentImage
    }
    
    func resetRatingScore() -> Void {
        self.StudentRatingScore = 0
    }
    
    
    
    
}

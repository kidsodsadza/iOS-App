//
//  PlaceInfo.swift
//  JapanLover
//
//  Created by ict on 11/30/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class PlaceInfo: NSObject {
    var placeName : String
    var placeImg : UIImage
    
    override init(){
        self.placeName = ""
        self.placeImg = UIImage()
    }
    
    init(placeName : String, placeImg : UIImage){
        self.placeName = placeName
        self.placeImg = placeImg
    }
    
}

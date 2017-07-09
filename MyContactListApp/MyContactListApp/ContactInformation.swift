//
//  ContactInformation.swift
//  MyContactListApp
//
//  Created by ict on 11/2/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class ContactInformation: NSObject {
    var contactName : String
    var contactNickName : String
    var contactPhoneNumber : String
    var contactType : Int
    var contactPublicType : Int
    var contactImage : UIImage
    
    override init() {
        self.contactName  = ""
        self.contactNickName  = ""
        self.contactPhoneNumber = ""
        self.contactType = 0
        self.contactPublicType = 0
        self.contactImage = UIImage()
    }

    
    
    init(contactName : String, contactNickName : String, contactPhoneNumber : String, contactType : Int, contactPublicType : Int, contactImage : UIImage ) {
        self.contactName = contactName 
        self.contactNickName = contactNickName
        self.contactPhoneNumber = contactPhoneNumber
        self.contactType = contactType
        self.contactPublicType = contactPublicType
        self.contactImage = contactImage
    }
}

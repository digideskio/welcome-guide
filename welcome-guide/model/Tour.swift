//
//  Tour.swift
//  
//
//  Created by Christian Praiß on 28/06/15.
//
//

import UIKit

class Tour: PFObject, PFSubclassing {
    
    @NSManaged var location: PFGeoPoint
    @NSManaged var price: NSNumber
    @NSManaged var comment: String
    @NSManaged var categories: [String]
    
    override class func initialize() {
        var onceToken : dispatch_once_t = 0;
        dispatch_once(&onceToken) {
            self.registerSubclass()
        }
        
        super.initialize()
    }
    
    class func parseClassName() -> String {
        return "Tour"
    }
}

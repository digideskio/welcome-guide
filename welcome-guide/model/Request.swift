//
//  Request.swift
//  
//
//  Created by Philip Heinser on 28.06.15.
//
//

import UIKit

class Request: PFObject, PFSubclassing {
    
    @NSManaged var numberOfPeople: NSNumber
    @NSManaged var startTime: NSDate
    @NSManaged var tour: Tour
    @NSManaged var message: String
    @NSManaged var pickUpLocation: PFGeoPoint
    
    
    override class func initialize() {
        var onceToken : dispatch_once_t = 0;
        dispatch_once(&onceToken) {
            self.registerSubclass()
        }
        
        super.initialize()
    }
    
    class func parseClassName() -> String {
        return "TourRequest"
    }
}

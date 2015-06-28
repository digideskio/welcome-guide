//
//  RequestTableViewController.swift
//  welcome-guide
//
//  Created by rebelvand on 27/06/15.
//  Copyright (c) 2015 Philip Heinser. All rights reserved.
//

import UIKit

class RequestTableViewController: UITableViewController, UITextFieldDelegate {

    @IBOutlet weak var dateButton: UIButton!
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var personStepper: UIStepper!
    @IBOutlet weak var pickupTextField: UITextField!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var mapView: MKMapView!
    
    var request: Request?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if request == nil {
            
            request = Request()
        }
        
        setupWithRequst()
    }
    
    func setupWithRequst() {
        
        if let date = request?.startTime {
            
            dateButton.setTitle( NSDateFormatter().stringFromDate(date), forState: UIControlState.Normal)
        }
        
        if let people = request?.numberOfPeople {
            personLabel.text = "\(people) Person"
        }
    }
    
    @IBAction func updateRequest(sender: AnyObject) {
        
        request?.numberOfPeople = personStepper.value
        
        setupWithRequst()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        let geoCoder = CLGeocoder()
        
        geoCoder.geocodeAddressString(pickupTextField.text, completionHandler: { (results, error) -> Void in
            
            if results.count > 0 {
                
                let placemark = results[0] as! CLPlacemark
                
                
                self.request?.pickUpLocation = PFGeoPoint(location: placemark.location)
                let annotation = MKPointAnnotation()
                annotation.coordinate = placemark.location.coordinate
                self.mapView.addAnnotation(annotation)
                self.mapView.showAnnotations([annotation], animated: true)
            }
            
        })
        
        return textField.resignFirstResponder()
    }

}

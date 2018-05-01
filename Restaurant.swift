//
//  Restaurant.swift
//  ProjectThree
//
//  Created by Carlton Hui on 4/27/18.
//  Copyright © 2018 Carlton Hui. All rights reserved.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {

    let restaurantTitle: String?
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    //Initialize the MKAnnotation object
    init(title:String, type: String, coordinate: CLLocationCoordinate2D){
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
        
    }
    
    var subtitle: String? {
        return restaurantTitle
        
    }
}


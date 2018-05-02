//
//  ViewControllerTwo.swift
//  ProjectThree
//
//  Created by Carlton Hui on 4/27/18.
//  Copyright © 2018 Carlton Hui. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewControllerTwo: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.365621, longitude: -157.927382)
    
    let regionRadius: CLLocationDistance = 200
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Eatery Locations"

        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Taco Bell", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.366054, longitude: -157.927548))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Subway", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.364985, longitude: -157.928028))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Restaurant(title: "Pizza Hut", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.365686, longitude: -157.926895))
        mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = Restaurant(title: "Stadium Pho", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.365175, longitude: -157.927751))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = Restaurant(title: "Jamba Juice", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.365873, longitude: -157.926951))
        mapView.addAnnotation(restaurantFive)
        
        let restaurantSix = Restaurant(title: "Royal Palace", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.366305, longitude: -157.927006))
        mapView.addAnnotation(restaurantSix)
        
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

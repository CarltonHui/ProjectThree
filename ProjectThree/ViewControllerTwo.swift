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
    
    let initialLocation = CLLocation(latitude: 21.3653537, longitude: -157.929242)
    
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()

        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Starbucks", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.366550, longitude: -157.930106))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Subway", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.365076, longitude: -157.928030))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Restaurant(title: "Pizza Hut", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.365686, longitude: -157.926895))
        mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = Restaurant(title: "Stadium Pho", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.365076, longitude: -157.928030))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = Restaurant(title: "Jamba Juice", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.365076, longitude: -157.928030))
        mapView.addAnnotation(restaurantFive)
        
        let restaurantSix = Restaurant(title: "Royal Palace", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.365076, longitude: -157.928030))
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

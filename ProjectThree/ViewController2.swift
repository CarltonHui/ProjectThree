//
//  ViewController2.swift
//  ProjectThree
//
//  Created by Carlton Hui on 5/2/18.
//  Copyright © 2018 Carlton Hui. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var descLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My Favorite Restaurants in Aiea"
        
        titleLabel.text = restaurants[myIndex]
        descLabel.text = restaurantDesc[myIndex]
        myImageView.image = UIImage(named: restaurants[myIndex] + ".jpg")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }
}

//
//  ViewController.swift
//  ProjectThree
//
//  Created by Carlton Hui on 4/23/18.
//  Copyright © 2018 Carlton Hui. All rights reserved.
//

import UIKit

var restaurants = ["Jamba Juice", "Pizza Hut", "Royal Palace", "Stadium Pho", "Subway","Taco Bell"]
var restaurantDesc = ["Juice Shop","Pizza Shop","Chinese Food","Vietnamese Food","Sandwich Shop","Taco Shop"]
var myIndex = 0

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Aiea Eats"
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
            UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                cell.textLabel?.text = restaurants[indexPath.row]
                return cell
        }
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
}
myIndex = indexPath.row
    performSegue(withIdentifier: "segue", sender: self)
}

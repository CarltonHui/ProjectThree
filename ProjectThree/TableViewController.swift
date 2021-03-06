//
//  TableViewController.swift
//  ProjectThree
//
//  Created by Carlton Hui on 5/2/18.
//  Copyright © 2018 Carlton Hui. All rights reserved.
//

import UIKit

var restaurants = ["Jamba Juice","Pizza Hut","Royal Palace","Stadium Pho","Subway","Taco Bell"]
var restaurantDesc = ["Jamba Juice is a Juice Shop which primarily sells smoothies.","Pizza Hut is a chain Pizza Shop which is well known for their delivery service.","Royal Palace is a chinese food restaurant.","Stadium Pho is a vietnamese food restaurant.","Subway is a sandwich shop which is well known for their focus on customer options.","Taco Bell is a taco shop which is well known for their fast and cheap American style Mexican food."]
var myIndex = 0

class TableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return restaurants.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
            UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                cell.textLabel?.text = restaurants[indexPath.row]
                return cell
        }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}

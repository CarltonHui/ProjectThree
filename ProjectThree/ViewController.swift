//
//  ViewController.swift
//  ProjectThree
//
//  Created by Carlton Hui on 4/23/18.
//  Copyright © 2018 Carlton Hui. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
let myFriendsArray = ["Jamba Juice", "Pizza Hut", "Royal Palace", "Stadium Pho", "Subway","Taco Bell"]
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        super.viewDidLoad()
        
        self.title = "Stadium Eats"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
            let text = myFriendsArray[indexPath.row]
            cell.textLabel?.text = text
            return cell
            
    }
}

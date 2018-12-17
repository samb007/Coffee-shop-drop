//
//  CoffeeViewController.swift
//  Coffee-shop-drop
//
//  Created by CodeNation18 on 11/12/2018.
//  Copyright © 2018 CodeNation18. All rights reserved.
//

import UIKit

class CoffeeViewController: UITableViewController {
    
    var coffees = SomeData.generateCoffeeData()

}

extension CoffeeViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffees.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoffeeCell",
                                                 for: indexPath) as! CoffeeCell
        
        let coffee = coffees[indexPath.row]
        cell.coffee = coffee
        return cell
    }
}

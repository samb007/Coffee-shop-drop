//
//  SomeData.swift
//  Coffee-shop-drop
//
//  Created by CodeNation18 on 11/12/2018.
//  Copyright © 2018 CodeNation18. All rights reserved.
//

import Foundation

final class SomeData {
    static func generateCoffeeData()->[Coffee]{
        return[
            Coffee(name:"Latte", store:"Starbucks", rating: 5),
            Coffee(name:"Latte", store:"Costa", rating: 3),
            Coffee(name:"Latte", store:"Nero", rating: 1)
        ]
    }
}

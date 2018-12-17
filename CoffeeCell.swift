//
//  CoffeeCell.swift
//  Coffee-shop-drop
//
//  Created by CodeNation18 on 12/12/2018.
//  Copyright © 2018 CodeNation18. All rights reserved.
//

import UIKit

class CoffeeCell: UITableViewCell {

    
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var storeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!

    var coffee: Coffee? {
        didSet {
            guard let coffee = coffee else { return }
            
            storeLabel.text = coffee.store
            nameLabel.text = coffee.name
            ratingImageView.image = image(forRating: coffee.rating)
        }
    }
    func image(forRating rating: Int) ->
    UIImage? {
    let imageName = "\(rating)Stars"
    return UIImage(named: imageName)
    
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

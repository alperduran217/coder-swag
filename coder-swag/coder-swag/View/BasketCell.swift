//
//  BasketCell.swift
//  coder-swag
//
//  Created by Mehmet Alper Duran on 16.10.2017.
//  Copyright © 2017 Mehmet Alper Duran. All rights reserved.
//

import UIKit

class BasketCell: UITableViewCell {

    @IBOutlet weak var basketImage: UIImageView!
    @IBOutlet weak var basketTitle: UILabel!
    @IBOutlet weak var basketPrice: UILabel!
    @IBOutlet weak var basketQuantity: UILabel!
    
    func updateViews(basket: Basket) {
        basketImage.image = UIImage(named: basket.imageName)
        basketTitle.text = String(basket.title)
        basketPrice.text = String(basket.price)
        
    }
  

}

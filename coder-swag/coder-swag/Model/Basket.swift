//
//  Basket.swift
//  coder-swag
//
//  Created by Mehmet Alper Duran on 16.10.2017.
//  Copyright © 2017 Mehmet Alper Duran. All rights reserved.
//

import Foundation

struct Basket {
    public var title: String
    public var price: String
    public var quantity: Int
    public var imageName: String
    
    init(title: String, price: String, quantity: Int, imageName: String) {
        self.title = title
        self.price = price
        self.quantity = quantity
        self.imageName = imageName
    }
    
}

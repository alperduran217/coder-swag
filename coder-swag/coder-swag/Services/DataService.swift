//
//  DataService.swift
//  coder-swag
//
//  Created by Mehmet Alper Duran on 12.10.2017.
//  Copyright © 2017 Mehmet Alper Duran. All rights reserved.
//

import Foundation

//Singleton
class DataService {
    static let instance = DataService() // static: only every one copy in memory
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price:"$18", imageName:"hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price:"$22", imageName:"hat02.png"),
        Product(title: "Devslopes Logo Hat White", price:"$22", imageName:"hat03.png"),
        Product(title: "Devslopes Logo Snapback ", price:"$20", imageName:"hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hodie Grey", price:"$32", imageName:"hoodie01.png"),
        Product(title: "Devslopes Logo Hodie Red", price:"$22", imageName:"hoodie02.png"),
        Product(title: "Devslopes Logo Hodie Grey", price:"$22", imageName:"hoodie03.png"),
        Product(title: "Devslopes Logo Hodie Black", price:"$20", imageName:"hoodie04.png")
        ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price:"$32", imageName:"shirts01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price:"$22", imageName:"shirts02.png"),
        Product(title: "Devslopes Logo Shirt Red", price:"$22", imageName:"shirts03.png"),
        Product(title: "Hustle Delegate Grey", price:"$20", imageName:"shirts04.png"),
        Product(title: "Kickflip Studios Black", price:"$20", imageName:"shirts05.png"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getCategories(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
              return getHats()
        case "DIGITAL":
              return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}

//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Mehmet Alper Duran on 12.10.2017.
//  Copyright © 2017 Mehmet Alper Duran. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var catgeoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        catgeoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }



}

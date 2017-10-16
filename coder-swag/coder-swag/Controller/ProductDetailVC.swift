//
//  ProductDetailVC.swift
//  coder-swag
//
//  Created by Mehmet Alper Duran on 12.10.2017.
//  Copyright © 2017 Mehmet Alper Duran. All rights reserved.
//

import UIKit

class ProductDetailVC: UIViewController {
    
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productQuantity: UITextField!
    private(set) public var product: Product!
    @IBAction func addToBasketPressed(_ sender: Any) {
        addProducts(product: product)
    }
    
    func addProducts(product: Product) {
        
        let basket = DataService.instance.addProductToBasket(product: product)
        
    }
    

    func initProductDetails(products: Product) {

        navigationItem.title = products.title
        product = products
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ProductDetails()
        
        let increaseBtn =  UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        increaseBtn.setTitle("+", for: .normal)
        productQuantity.inputAccessoryView = increaseBtn
    }
    
    func ProductDetails() {
        productLabel.text = product.title
        productPrice.text = product.price
        productImage.image = UIImage(named: product.imageName)
    }
    
   
}

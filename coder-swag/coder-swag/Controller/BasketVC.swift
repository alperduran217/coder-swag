//
//  BasketVC.swift
//  coder-swag
//
//  Created by Mehmet Alper Duran on 16.10.2017.
//  Copyright © 2017 Mehmet Alper Duran. All rights reserved.
//

import UIKit

class BasketVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    @IBOutlet weak var basketTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        basketTable.dataSource = self
        basketTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getBasket().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BasketCell") as? BasketCell{
            let basket = DataService.instance.getBasket()[indexPath.row]
            cell.updateViews(basket: basket)
            return cell
        } else {
            return BasketCell()
        }
    }
  

}

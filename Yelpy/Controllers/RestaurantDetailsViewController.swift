//
//  RestaurantDetailsViewController.swift
//  Yelpy
//
//  Created by Yunior Sanchez on 9/20/22.
//  Copyright © 2022 memo. All rights reserved.
//

import UIKit

class RestaurantDetailsViewController: UIViewController {

    @IBOutlet weak var restaurantImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var startImage: UIImageView!
    @IBOutlet weak var reviewsLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var location: UILabel!
    var r: Restaurant!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantImage.af.setImage(withURL: r.imageURL!)
        restaurantImage.alpha = 0.5
        nameLabel.text = r.name
        
        startImage.image = Stars.dict[r.rating]!
        reviewsLabel.text = String(r.reviews)
        phoneLabel.text = r.Phone

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

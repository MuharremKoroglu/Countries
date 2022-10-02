//
//  DetailsViewController.swift
//  Countries
//
//  Created by Muharrem Köroğlu on 2.10.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var CountryNameLabel: UILabel!
    @IBOutlet weak var CountryDetailsLabel: UILabel!
    
    var selectedCountry : Countries?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CountryNameLabel.text = selectedCountry?.CountryName
        CountryDetailsLabel.text = selectedCountry?.CountryDetails
        imageView.image = selectedCountry?.CountryFlag

        
    }
    


}

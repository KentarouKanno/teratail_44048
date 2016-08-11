//
//  CustomCell2.swift
//  teratail_44048
//
//  Created by KentarOu on 2016/08/12.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import UIKit

class CustomCell2: UITableViewCell {

    @IBOutlet weak var weatherIconImage: UIImageView!
    @IBOutlet weak var capitalLabel    : UILabel!
    @IBOutlet weak var detailLabel     : UILabel!
    
    var data: WeatherData! {
        didSet {
            weatherIconImage.image = UIImage(named: data.weatherImageName)
            capitalLabel.text      = data.capital
            detailLabel.text       = data.detailInfo
        }
    }
}

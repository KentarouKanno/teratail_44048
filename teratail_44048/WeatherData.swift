//
//  WeatherData.swift
//  teratail_44048
//
//  Created by KentarOu on 2016/08/12.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import Foundation

class WeatherData {
    var weatherImageName: String!
    var capital: String!
    var detailInfo: String!
    
    init(image: String, capital: String, detail: String) {
        self.weatherImageName = image
        self.capital = capital
        self.detailInfo = detail
    }
    
    class func createData() -> Array<WeatherData> {
        var result:Array<WeatherData> = []
        result.append(WeatherData(image: "Sunny", capital: "New York", detail: "New York Detail Info -New York Detail Info"))
        result.append(WeatherData(image: "Rain", capital: "Paris", detail: "Paris Detail Info - Paris Detail Info - Paris Detail Info - Paris Detail Info"))
        result.append(WeatherData(image: "Cloud", capital: "Tokyo", detail: "Tokyo Detail Info - Tokyo Detail Info - Tokyo Detail Info - Tokyo Detail Info - Tokyo Detail Info - Tokyo Detail Info - Tokyo Detail Info"))
        
        return result
    }
}

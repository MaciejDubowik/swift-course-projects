//
//  WeatherModel.swift
//  Clima
//
//  Created by Maciej Dubowik on 21/02/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let condition: String
    let cityName: String
    let temperature: Double
    
    var temperatureString: String{
        return String(format: "%.1f", temperature)
    }
}

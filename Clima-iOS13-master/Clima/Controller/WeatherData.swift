//
//  weatherData.swift
//  Clima
//
//  Created by Maciej Dubowik on 20/02/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable{
    let location: Location
    let current: Current
}

struct Location: Decodable{
    let name: String
}

struct Current: Decodable{
    let temp_c: Double
    let condition: Condition
}

struct Condition: Decodable{
    let text: String
}

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
}

struct Location: Decodable{
    let name: String
}

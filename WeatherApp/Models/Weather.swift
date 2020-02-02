//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Toni Tani on 17.1.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation

class WeatherFeedback: Decodable { // names and structure from json api
    let main: Weather
    
    }
struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}

//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Toni Tani on 2.2.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import Foundation

class WeatherService {
    func getWeather(city: String, completion: @escaping (Weather?) -> ()) {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)appid=8cb2c84284dd72eef598f86cc66515e2&units=metric") else {
            completion(nil)
            return
            }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let weatherFeedback = try? JSONDecoder().decode(WeatherFeedback.self, from: data)
            if let weatherFeedback = weatherFeedback {
                let weather = weatherFeedback.main
                completion(weather)
            } else {
                completion(nil)
            }
        }
    }
}


//
//  DayViewViewModel.swift
//  Cloudy
//
//  Created by Chawatvish Worrapoj on 14/6/2561 BE.
//  Copyright © 2561 Cocoacasts. All rights reserved.
//

import UIKit

struct DayViewViewModel {
    
    // MARK: - Properties
    
    let weatherData: WeatherData
    
    // MARK: -
    
    private let dateFormatter = DateFormatter()
    private let timeFormatter = DateFormatter()
    
    //MARK: -
    
    var date:String {
        dateFormatter.dateFormat =  "EEE, MMMM d"
        return dateFormatter.string(from: weatherData.time)
    }
    
    var time:String {
        timeFormatter.dateFormat = UserDefaults.timeNotation().timeFormat
        return dateFormatter.string(from: weatherData.time)
    }
    
    var summary: String {
        return weatherData.summary
    }
    
    var temperature: String {
        let temperature = weatherData.temperature
        
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.1f ˚F", temperature)
        case .celsius:
            return String(format: "%.1f ˚C", temperature.toCelcius())
        }
    }
    
    var windSpeed: String {
        let windSpeed = weatherData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", windSpeed)
        case .metric:
            return String(format: "%.f KPH", windSpeed.toKPH())
        }
    }
    
    var image: UIImage? {
        return UIImage.imageForIcon(withName: weatherData.icon)
    }
}

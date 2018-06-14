//
//  WeekViewViewModel.swift
//  Cloudy
//
//  Created by Chawatvish Worrapoj on 14/6/2561 BE.
//  Copyright © 2561 Cocoacasts. All rights reserved.
//

import UIKit

struct WeekViewViewModel {
    let weatherData: [WeatherDayData]
    
    var numberOfSection:Int {
        return 1
    }
    
    var numberOfDays: Int {
        return weatherData.count
    }
    
    func day(for index: Int) -> String {
        let weatherDayData = weatherData[index]
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    func date(for index: Int) -> String {
        let weatherDayData = weatherData[index]
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d"
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    func temperature(for index: Int) -> String {
        let weatherDayData = weatherData[index]
        let min = format(temperature: weatherDayData.temperatureMin)
        let max = format(temperature: weatherDayData.temperatureMax)
        
        return "\(min) - \(max)"
    }
    
    func format(temperature: Double) -> String {
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.0f ˚F", temperature)
        case .celsius:
            return String(format: "%.0f ˚C", temperature.toCelcius())
        }
    }
    
    func windSpeed(for index: Int) -> String {
        let weatherDayData = weatherData[index]
        let windSpeed = weatherDayData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", windSpeed)
        case .metric:
            return String(format: "%.f KPH", windSpeed)
        }
    }
    
    func image(for index:Int) -> UIImage? {
        let weatherDayData = weatherData[index]
        return UIImage.imageForIcon(withName: weatherDayData.icon)
    }
}

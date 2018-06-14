//
//  SettingsViewTemperatureViewModel.swift
//  Cloudy
//
//  Created by Chawatvish Worrapoj on 14/6/2561 BE.
//  Copyright © 2561 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingsViewTemperatureViewModel {
    
    let temperatureNotation: TemperatureNotation
    
    var text: String {
        switch temperatureNotation {
        case .fahrenheit:
            return "Fahrenheit"
        case .celsius:
            return "Celsius"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.temperatureNotation() == temperatureNotation {
            return .checkmark
        } else {
            return .none
        }
    }
}

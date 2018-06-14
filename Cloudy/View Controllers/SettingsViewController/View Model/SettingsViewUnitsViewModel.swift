//
//  SettingViewUnitsViewModel.swift
//  Cloudy
//
//  Created by Chawatvish Worrapoj on 14/6/2561 BE.
//  Copyright © 2561 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingsViewUnitsViewModel {
    
    let unitsNotation: UnitsNotation
    
    var text: String {
        switch unitsNotation {
        case .imperial:
            return "Imperial"
        case .metric:
            return "Metric"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.unitsNotation() == unitsNotation {
            return .checkmark
        } else {
            return .none
        }
    }
}

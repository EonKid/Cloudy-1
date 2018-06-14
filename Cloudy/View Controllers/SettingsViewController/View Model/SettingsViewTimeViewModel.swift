//
//  SettingViewTimeViewModel.swift
//  Cloudy
//
//  Created by Chawatvish Worrapoj on 14/6/2561 BE.
//  Copyright © 2561 Cocoacasts. All rights reserved.
//

import UIKit

struct SettingsViewTimeViewModel {
    
    let timeNotation: TimeNotation
    
    var text: String {
        switch timeNotation {
        case .twelveHour:
            return "12 Hour"
        case .twentyFourHour:
            return "24 Hour"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if UserDefaults.timeNotation() == timeNotation {
            return .checkmark
        } else {
            return .none
        }
    }
}

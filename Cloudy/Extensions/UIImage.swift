//
//  UIImage.swift
//  Cloudy
//
//  Created by Chawatvish Worrapoj on 14/6/2561 BE.
//  Copyright © 2561 Cocoacasts. All rights reserved.
//

import UIKit

extension UIImage {
    class func imageForIcon(withName name: String) -> UIImage? {
        switch name {
        case "clear-day", "clear-night", "rain", "snow", "sleet":
            return UIImage(named: name)
        case "wind", "cloudy", "partly-cloudy-day", "partly-cloudy-night":
            return UIImage(named: "cloudy")
        default:
            return UIImage(named: "clear-day")
        }
    }
}

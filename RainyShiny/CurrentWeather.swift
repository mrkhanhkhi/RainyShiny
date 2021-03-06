//
//  CurrentWeather.swift
//  RainyShiny
//
//  Created by Admin on 3/19/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName:String?
    var _date:String?
    var _weatherType:String?
    var _currentTemp:Double?
    
    var cityName:String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName!
    }
    
    var date:String {
        if _date == nil {
            _date = ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date!
    }
    
    var weatherType:String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType!
    }
    
    var currentTemp:Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp!
    }
    
    func downloadWeatherDetails(completed:DownloadComplete) {
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)
        Alamofire.request(currentWeatherURL!, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { response in
            let result = response.result
            print(result)
        }
        completed()
    }
    
}

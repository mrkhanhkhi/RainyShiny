//
//  Constant.swift
//  RainyShiny
//
//  Created by Admin on 3/19/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "b0c29f9d86c3423ce32868ee051febd6"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)30\(LONGITUDE)212\(APP_ID)\(API_KEY)"

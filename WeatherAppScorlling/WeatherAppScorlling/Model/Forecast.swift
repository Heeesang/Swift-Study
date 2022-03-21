//
//  Forecast.swift
//  WeatherAppScorlling
//
//  Created by 곽희상 on 2022/03/21.
//

import SwiftUI

struct DayForecast: Identifiable{
    var id = UUID().uuidString
    var day: String
    var farenheit: CGFloat
    var image: String
}

var forecast = [
    DayForecast(day: "Today", farenheit: 94, image: "sun.min"),
    DayForecast(day: "Wed", farenheit: 90, image: "cloud.sun"),
    DayForecast(day: "Tue", farenheit: 98, image: "cloud.sun.bolt"),
    DayForecast(day: "Thu", farenheit: 99, image: "sun.max"),
    DayForecast(day: "Fri", farenheit: 92, image: "cloud.sun"),
    DayForecast(day: "Sat", farenheit: 89, image: "cloud.sun"),
    DayForecast(day: "Sun", farenheit: 96, image: "sun.max"),
    DayForecast(day: "Mon", farenheit: 94, image: "sun.max"),
    DayForecast(day: "Tue", farenheit: 93, image: "cloud.sun.bolt"),
    DayForecast(day: "Wed", farenheit: 94, image: "sun.min"),
]

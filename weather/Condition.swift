//
//  Condition.swift
//  weather
//
//  Created by John Martino on 2022-04-24.
//

import Foundation

struct Condition: Codable, StringRepresentable {
    let code: Int
    let icon: String
    let text: String
    
    var description: String {
        emoji + "  \(text)"
    }
}

// http://cdn.weatherapi.com/weather/64x64/day/248.png
extension Condition {
    private var emoji: String {
        switch code {
        case 1000: return text.lowercased() == "clear" ? "🌙" : "☀️" // Clear / Sunny
        case 1003: return "🌤" // Partly cloudy
        case 1006: return "☁️" // Cloudy
        case 1009: return "🌫" // Overcast
        case 1030: return "😶‍🌫️" // Mist
        case 1063: return "🌦" // Patchy rain possible 176
        case 1066: return "☃️" // Patchy snow possible 179
        case 1069: return "❄️" // Patchy sleet possible 182
        case 1072: return "❄️" // Patchy freezing drizzle possible 185
        case 1087: return "🌩" // Thundery outbreaks possible    200
        case 1114: return "🌬" // Blowing snow    227
        case 1117: return "🌨" // Blizzard
        case 1135: return "🌁" // Fog
        case 1147: return "🌁" // Freezing fog    260
        case 1150: return "🌦" //    Patchy light drizzle    Patchy light drizzle    263
        case 1153: return "🌦" //    Light drizzle    Light drizzle    266
        case 1168: return "🌧" //    Freezing drizzle    Freezing drizzle    281
        case 1171: return "☔️" //    Heavy freezing drizzle    Heavy freezing drizzle    284
        case 1180: return "🌦" //    Patchy light rain    Patchy light rain    293
        case 1183: return "🌦" //    Light rain    Light rain    296
        case 1186: return "🌦" //    Moderate rain at times    Moderate rain at times    299
        case 1189: return "🌦" //    Moderate rain    Moderate rain    302
        case 1192: return "🌧" //    Heavy rain at times    Heavy rain at times    305
        case 1195: return "🌧" //    Heavy rain    Heavy rain    308
        case 1198: return "☔︎" //    Light freezing rain    Light freezing rain    311
        case 1201: return "🌧" //    Moderate or heavy freezing rain    Moderate or heavy freezing rain    314
        case 1204: return "❄️" //    Light sleet    Light sleet    317
        case 1207: return "❄️" //    Moderate or heavy sleet    Moderate or heavy sleet    320
        case 1210: return "☃️" //    Patchy light snow    Patchy light snow    323
        case 1213: return "☃️" //   Light snow    Light snow    326
        case 1216: return "☃️" //    Patchy moderate snow    Patchy moderate snow    329
        case 1219: return "☃️" //    Moderate snow    Moderate snow    332
        case 1222: return "🌨" //    Patchy heavy snow    Patchy heavy snow    335
        case 1225: return "🌨" //    Heavy snow    Heavy snow    338
        case 1237: return "🧊" //    Ice pellets    Ice pellets    350
        case 1240: return "🌦" //    Light rain shower    Light rain shower    353
        case 1243: return "⛈" //    Moderate or heavy rain shower    Moderate or heavy rain shower    356
        case 1246: return "🌧" //    Torrential rain shower    Torrential rain shower    359
        case 1249: return "🌧" //    Light sleet showers    Light sleet showers    362
        case 1252: return "🌧" //    Moderate or heavy sleet showers    Moderate or heavy sleet showers    365
        case 1255: return "☃️" //    Light snow showers    Light snow showers    368
        case 1258: return "🌨" //    Moderate or heavy snow showers    Moderate or heavy snow showers    371
        case 1261: return "☃️" //    Light showers of ice pellets    Light showers of ice pellets    374
        case 1264: return "🧊" //    Moderate or heavy showers of ice pellets    Moderate or heavy showers of ice pellets    377
        case 1273: return "⛈" //    Patchy light rain with thunder    Patchy light rain with thunder    386
        case 1276: return "⛈" //    Moderate or heavy rain with thunder    Moderate or heavy rain with thunder    389
        case 1279: return "⛈" //    Patchy light snow with thunder    Patchy light snow with thunder    392
        case 1282: return "⛈" //    Moderate or heavy snow with thunder    Moderate or heavy snow with thunder    395
        default: return ""
        }
    }
}

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
        case 1000: return text.lowercased() == "clear" ? "π" : "βοΈ" // Clear / Sunny
        case 1003: return "π€" // Partly cloudy
        case 1006: return "βοΈ" // Cloudy
        case 1009: return "π«" // Overcast
        case 1030: return "πΆβπ«οΈ" // Mist
        case 1063: return "π¦" // Patchy rain possible 176
        case 1066: return "βοΈ" // Patchy snow possible 179
        case 1069: return "βοΈ" // Patchy sleet possible 182
        case 1072: return "βοΈ" // Patchy freezing drizzle possible 185
        case 1087: return "π©" // Thundery outbreaks possible    200
        case 1114: return "π¬" // Blowing snow    227
        case 1117: return "π¨" // Blizzard
        case 1135: return "π" // Fog
        case 1147: return "π" // Freezing fog    260
        case 1150: return "π¦" //    Patchy light drizzle    Patchy light drizzle    263
        case 1153: return "π¦" //    Light drizzle    Light drizzle    266
        case 1168: return "π§" //    Freezing drizzle    Freezing drizzle    281
        case 1171: return "βοΈ" //    Heavy freezing drizzle    Heavy freezing drizzle    284
        case 1180: return "π¦" //    Patchy light rain    Patchy light rain    293
        case 1183: return "π¦" //    Light rain    Light rain    296
        case 1186: return "π¦" //    Moderate rain at times    Moderate rain at times    299
        case 1189: return "π¦" //    Moderate rain    Moderate rain    302
        case 1192: return "π§" //    Heavy rain at times    Heavy rain at times    305
        case 1195: return "π§" //    Heavy rain    Heavy rain    308
        case 1198: return "βοΈ" //    Light freezing rain    Light freezing rain    311
        case 1201: return "π§" //    Moderate or heavy freezing rain    Moderate or heavy freezing rain    314
        case 1204: return "βοΈ" //    Light sleet    Light sleet    317
        case 1207: return "βοΈ" //    Moderate or heavy sleet    Moderate or heavy sleet    320
        case 1210: return "βοΈ" //    Patchy light snow    Patchy light snow    323
        case 1213: return "βοΈ" //   Light snow    Light snow    326
        case 1216: return "βοΈ" //    Patchy moderate snow    Patchy moderate snow    329
        case 1219: return "βοΈ" //    Moderate snow    Moderate snow    332
        case 1222: return "π¨" //    Patchy heavy snow    Patchy heavy snow    335
        case 1225: return "π¨" //    Heavy snow    Heavy snow    338
        case 1237: return "π§" //    Ice pellets    Ice pellets    350
        case 1240: return "π¦" //    Light rain shower    Light rain shower    353
        case 1243: return "β" //    Moderate or heavy rain shower    Moderate or heavy rain shower    356
        case 1246: return "π§" //    Torrential rain shower    Torrential rain shower    359
        case 1249: return "π§" //    Light sleet showers    Light sleet showers    362
        case 1252: return "π§" //    Moderate or heavy sleet showers    Moderate or heavy sleet showers    365
        case 1255: return "βοΈ" //    Light snow showers    Light snow showers    368
        case 1258: return "π¨" //    Moderate or heavy snow showers    Moderate or heavy snow showers    371
        case 1261: return "βοΈ" //    Light showers of ice pellets    Light showers of ice pellets    374
        case 1264: return "π§" //    Moderate or heavy showers of ice pellets    Moderate or heavy showers of ice pellets    377
        case 1273: return "β" //    Patchy light rain with thunder    Patchy light rain with thunder    386
        case 1276: return "β" //    Moderate or heavy rain with thunder    Moderate or heavy rain with thunder    389
        case 1279: return "β" //    Patchy light snow with thunder    Patchy light snow with thunder    392
        case 1282: return "β" //    Moderate or heavy snow with thunder    Moderate or heavy snow with thunder    395
        default: return ""
        }
    }
}

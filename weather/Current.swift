//
//  Current.swift
//  weather
//
//  Created by John Martino on 2022-04-24.
//

import Foundation

protocol StringRepresentable {
    var description: String { get }
}

struct Location: Codable, StringRepresentable {
    let country: String
    let name: String
    let region: String
    
    var description: String {
        name + ", " + region + ", " + country
    }
}

struct Current: Codable, StringRepresentable {
    let cloud: Int
    let condition: Condition
    let tempC: Double
    let tempF: Double
    let pressure: Int
    
    enum CodingKeys: String, CodingKey {
        case cloud
        case condition
        case tempC = "temp_c"
        case tempF = "temp_f"
        case pressure = "pressure_mb"
    }
    
    var description: String {
        let kpa = Double(pressure)/10
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 1
        let pressureValue = formatter.string(from: NSNumber(value: kpa)) ?? "---"
        return condition.description + "  \(Int(round(tempC)))°C : \(Int(round(tempF)))°F : \(pressureValue)kPa"
    }
}

struct Today: Codable, StringRepresentable {
    let current: Current
    let location: Location
    
    var description: String {
        location.description + "\n" + current.description
    }
}

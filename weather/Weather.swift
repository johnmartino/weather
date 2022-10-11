//
//  Weather.swift
//  weather
//
//  Created by John Martino on 2022-04-24.
//

import Foundation
import ArgumentParser

struct Weather: ParsableCommand {
    static var configuration = CommandConfiguration(abstract: "A utility for checking the weather.", version: "1.0.0")
    
    @Argument(help: "The city name.")
    var city: String
    
    func run() throws {
        Task { try await WeatherService().fetchCurrent(city: city) }
    }
}

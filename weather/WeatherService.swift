//
//  WeatherService.swift
//  weather
//
//  Created by John Martino on 2022-04-24.
//

import Foundation

// weatherapi.com

@MainActor
class WeatherService {
    @WeatherRequestBuilder func request(for city: String) -> URLRequest {
        ("key", "d50030ebca114a31b09151213222404")
        ("q", city)
        ("aqi", "no")
    }
    
    func fetchCurrent(city: String) async throws {
        defer { exit(0) }
        let request = request(for: city.lowercased())
        do {
            let (data, _) = try await URLSession.shared.data(for: request)
            let today = try JSONDecoder().decode(Today.self, from: data)
            
            print(today.description)
        } catch {
            print("[🔥] " + error.localizedDescription)
            throw error
        }
    }
}

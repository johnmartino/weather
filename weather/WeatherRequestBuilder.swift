//
//  WeatherRequestBuilder.swift
//  weather
//
//  Created by John Martino on 2022-04-24.
//

import Foundation

@resultBuilder
struct WeatherRequestBuilder {
    static func buildBlock(_ components: (key: String, value: String)...) -> URLRequest {
        guard var urlComponents = URLComponents(string: "https://api.weatherapi.com/v1/current.json") else { fatalError() }
        
        var items = [URLQueryItem]()
        for component in components {
            items.append(URLQueryItem(name: component.key, value: component.value))
        }
        urlComponents.queryItems = items
        
        guard let url = urlComponents.url else { fatalError() }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        return request
    }
}

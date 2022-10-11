//
//  main.swift
//  weather
//
//  Created by John Martino on 2022-04-24.
//

import Foundation

@main
struct WeatherMain {
    static func main() async throws {
        Weather.main()
        RunLoop.main.run()
    }
}

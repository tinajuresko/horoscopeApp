//
//  HoroscopeWeeklyResponse.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 28.12.2024..
//

import Foundation

struct HoroscopeWeeklyResponse: Codable {
    let data: HoroscopeWeeklyData
    let status: Int
    let success: Bool
}

struct HoroscopeWeeklyData: Codable {
    let horoscopeData: String
    let week: String

}

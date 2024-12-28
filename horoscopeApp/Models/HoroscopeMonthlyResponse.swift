//
//  HoroscopeMonthlyResponse.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 28.12.2024..
//

import Foundation

struct HoroscopeMonthlyResponse: Codable {
    let data: HoroscopeMonthlyData
    let status: Int
    let success: Bool
}

struct HoroscopeMonthlyData: Codable {
    let challengingDays: String
    let horoscopeData: String
    let month: String
    let standoutDays: String

}

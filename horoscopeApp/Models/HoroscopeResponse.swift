//
//  ZodiacModel.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 27.12.2024..
//

import Foundation

//model 
struct HoroscopeResponse: Codable {
    let data: HoroscopeData
    let status: Int
    let success: Bool
}

struct HoroscopeData: Codable {
    let date: String
    let horoscopeData: String
}


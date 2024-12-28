//
//  HoroscopeService.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 27.12.2024..
//

import Foundation

enum HoroscopeError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}

class HoroscopeService {
    static let shared = HoroscopeService() // jednom stvorena instanca
    
    func fetchHoroscope(for sign: String, on day: String) async throws -> HoroscopeResponse {
        
        let endpoint = "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/daily?sign=\(sign)&day=\(day)"
        
        guard let url = URL(string: endpoint) else { throw HoroscopeError.invalidURL }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                   throw HoroscopeError.invalidResponse
               }
        do {
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
                
            return try decoder.decode(HoroscopeResponse.self, from: data)
        } catch {
            throw HoroscopeError.invalidData
        }
    }
    
    func fetchWeeklyHoroscope(for sign: String) async throws -> HoroscopeWeeklyResponse {
        
        let endpoint = "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/weekly?sign=\(sign)"
        guard let url = URL(string: endpoint) else { throw HoroscopeError.invalidURL }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                   throw HoroscopeError.invalidResponse
               }
        do {
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
                
            return try decoder.decode(HoroscopeWeeklyResponse.self, from: data)
        } catch {
            throw HoroscopeError.invalidData
        }
    }
    
    func fetchMonthlyHoroscope(for sign: String) async throws -> HoroscopeMonthlyResponse {
        
        let endpoint = "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/monthly?sign=\(sign)"
        guard let url = URL(string: endpoint) else { throw HoroscopeError.invalidURL }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                   throw HoroscopeError.invalidResponse
               }
        do {
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
                
            return try decoder.decode(HoroscopeMonthlyResponse.self, from: data)
        } catch {
            throw HoroscopeError.invalidData
        }
    }
    
    
}

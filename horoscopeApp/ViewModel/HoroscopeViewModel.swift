//
//  HoroscopeViewModel.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 27.12.2024..
//

import Foundation

class HoroscopeViewModel: ObservableObject {
    @Published var horoscope: HoroscopeResponse?
    @Published var weeklyHoroscope: HoroscopeWeeklyResponse?
    @Published var monthlyHoroscope: HoroscopeMonthlyResponse?
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func fetchHoroscope(for sign: String, on day: String) {
        isLoading = true
        errorMessage = nil
        
        Task {
            do {
                let horoscopeData = try await HoroscopeService.shared.fetchHoroscope(for: sign, on: day)
                DispatchQueue.main.async {
                    self.horoscope = horoscopeData
                    self.isLoading = false
                }
                print("success")
            } catch {
                DispatchQueue.main.async {
                    self.errorMessage = "Error fetching horoscope: \(error.localizedDescription)"
                    self.isLoading = false
                }
                print("failure")
            }
        }
    }
    
    func fetchWeeklyHoroscope(for sign: String) {
        isLoading = true
        errorMessage = nil
        
        Task {
            do {
                let horoscopeData = try await HoroscopeService.shared.fetchWeeklyHoroscope(for: sign)
                DispatchQueue.main.async {
                    self.weeklyHoroscope = horoscopeData
                    self.isLoading = false
                }
                print("success")
            } catch {
                DispatchQueue.main.async {
                    self.errorMessage = "Error fetching horoscope: \(error.localizedDescription)"
                    self.isLoading = false
                }
                print("failure")
            }
        }
    }
    
    func fetchMonthlyHoroscope(for sign: String) {
        isLoading = true
        errorMessage = nil
        
        Task {
            do {
                let horoscopeData = try await HoroscopeService.shared.fetchMonthlyHoroscope(for: sign)
                DispatchQueue.main.async {
                    self.monthlyHoroscope = horoscopeData
                    self.isLoading = false
                }
                print("success")
            } catch {
                DispatchQueue.main.async {
                    self.errorMessage = "Error fetching horoscope: \(error.localizedDescription)"
                    self.isLoading = false
                }
                print("failure")
            }
        }
    }
}

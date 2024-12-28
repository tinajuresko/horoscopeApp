//
//  ZodiacDetails.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 27.12.2024..
//

import SwiftUI

struct HoroscopeDetailsView: View {
    @State private var selectedDay: Int = 1
    let zodiacSign: String
    let date: String
    @State private var day: String = "today"
    @StateObject private var viewModel = HoroscopeViewModel()
    
    var body: some View {
        ZStack {
            Image("background55")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack (spacing: 30){
                
                VStack {
                    Image(zodiacSign.lowercased())
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text(date)
                        .bold()
                }
                ScrollView (.horizontal, showsIndicators: false){
                    HStack {
                        Button(action: {
                            day = "yesterday"
                            selectedDay = 0
                        }) {
                            Text("Yesterday")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding()
                                .frame(width: 120, height: 50)
                                .background(selectedDay == 0 ? Color.white.opacity(0.3) : Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 8)
                        }
                        Button(action: {
                            day = "today"
                            selectedDay = 1
                        }) {
                            Text("Today")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding()
                                .frame(width: 120, height: 50)
                                .background(selectedDay == 1 ? Color.white.opacity(0.3) : Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 8)
                        }
                        Button(action: {
                            day = "tomorrow"
                            selectedDay = 2
                        }) {
                            Text("Tomorrow")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding()
                                .frame(width: 120, height: 50)
                                .background(selectedDay == 2 ? Color.white.opacity(0.3) : Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 8)
                        }
                        Button(action: {
                            day = "weekly"
                            selectedDay = 3
                        }) {
                            Text("Weekly")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding()
                                .frame(width: 120, height: 50)
                                .background(selectedDay == 3 ? Color.white.opacity(0.3) : Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 8)
                        }
                        Button(action: {
                            day = "monthly"
                            selectedDay = 4
                        }) {
                            Text("Monthly")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding()
                                .frame(width: 120, height: 50)
                                .background(selectedDay == 4 ? Color.white.opacity(0.3) : Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 8)
                        }
                    }
                    .padding(.horizontal, 16)
                }
                
                ScrollView {
                    if day == "weekly" {
                        Text(viewModel.errorMessage ?? viewModel.weeklyHoroscope?.data.week ?? "Week")
                            .font(.title)
                            .bold()
                            
                        Text(viewModel.errorMessage ?? viewModel.weeklyHoroscope?.data.horoscopeData ?? "Weekly horoscope not available")
                            .bold()
                            .foregroundStyle(Color.black)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                            .lineSpacing(5)
                            .padding()
                        
                    } else if day == "monthly" {
                        Text(viewModel.errorMessage ?? viewModel.monthlyHoroscope?.data.month ?? "Month")
                            .font(.title)
                            .bold()
                        
                        Text(viewModel.errorMessage ?? viewModel.monthlyHoroscope?.data.horoscopeData ?? "Monthly horoscope not available")
                            .bold()
                            .foregroundStyle(Color.black)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                            .lineSpacing(5)
                            .padding()
                        
                        VStack{
                            Text("Challenging Days 💪")
                                .font(.headline)
                                .foregroundColor(.red)
                            
                            Text(viewModel.errorMessage ?? viewModel.monthlyHoroscope?.data.challengingDays ?? "No challenging days !")
                        }
                            .padding()
                        VStack{
                            Text("Standout Days 🌟")
                                .font(.headline)
                                .foregroundColor(.red)
                            
                            Text(viewModel.errorMessage ?? viewModel.monthlyHoroscope?.data.standoutDays ?? "No standout days .")
                        }
                            .padding()
                             
                    } else {
                        Text(viewModel.errorMessage ?? viewModel.horoscope?.data.date ?? day)
                            .font(.title)
                            .bold()
                        
                        Text(viewModel.errorMessage ?? viewModel.horoscope?.data.horoscopeData ?? "Daily horoscope not available")
                            .bold()
                            .foregroundStyle(Color.black)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                            .lineSpacing(5)
                            .padding()
                    }
                }
            }
            .padding()
            .onAppear {
                viewModel.fetchHoroscope(for: zodiacSign, on: day)
            }
            .onChange(of: day, initial: true) { oldValue, newValue in
                if newValue == "monthly"{
                    viewModel.fetchMonthlyHoroscope(for: zodiacSign)
                } else if newValue == "weekly" {
                    viewModel.fetchWeeklyHoroscope(for: zodiacSign)
                } else {
                    viewModel.fetchHoroscope(for: zodiacSign, on: newValue)
                }
            }
        }
    }
}

#Preview {
    HoroscopeDetailsView(zodiacSign: "Virgo", date: "Aug 24 - Sep 23")
}

//
//  CompatibilityView.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 28.12.2024..
//

import SwiftUI

struct CompatibilityView: View {
    @State private var yourSign: String = ""
    @State private var theirSign: String = ""
    @State private var compatibilityResult = ""
    @State private var showPopup: Bool = false
    
    let elements: [String: String] = [
            "Aries": "Fire", "Leo": "Fire", "Sagittarius": "Fire",
            "Taurus": "Earth", "Virgo": "Earth", "Capricorn": "Earth",
            "Gemini": "Air", "Libra": "Air", "Aquarius": "Air",
            "Cancer": "Water", "Scorpio": "Water", "Pisces": "Water"
        ]
    
    func calculateCompatibility (yourSign: String, theirSign: String) -> String {
        guard let yourElement = elements[yourSign],
              let theirElement = elements[theirSign] else {
            return "Invalid sign(s)! 🚫"
        }
        if yourElement == theirElement {
            return "Highly Compatible! ❤️"
        } else if (yourElement == "Fire" && theirElement == "Air") ||
                    (yourElement == "Earth" && theirElement == "Water") ||
                    (yourElement == "Air" && theirElement == "Fire") ||
                    (yourElement == "Water" && theirElement == "Earth"){
            return "Moderately Compatible! 🩵"
        }else {
            return "Low Compatibility! 💔"
        }
    }
    
    var body: some View {
        ZStack {
            Image("background55")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image("compatibility")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding()
                Text("Calculate your compatibility! ")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                
                TextField("Enter your sign", text: $yourSign)
                        .padding(.leading, 40)
                        .padding(.trailing, 20)
                        .frame(height: 30)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white.opacity(0.3))
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                        )
                        .padding(.trailing, 20)
                        .padding(.leading, 20)
                        
               
                    
                TextField("Enter their sign", text: $theirSign)
                        .padding(.leading, 40)
                        .padding(.trailing, 20)
                        .frame(height: 30)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white.opacity(0.3))
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                        )
                        .padding(.trailing, 20)
                        .padding(.leading, 20)
                
                Button(action: {
                    compatibilityResult = calculateCompatibility(yourSign: yourSign, theirSign: theirSign)
                    showPopup = true
                }) {
                    Text("Calculate")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 120, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 8)
                }
                
                if showPopup {
                    CompatibilityPopup(result: compatibilityResult) {
                        showPopup = false
                    }
                    .transition(.scale)
                    .zIndex(1)
                }
            }
            .animation(.easeInOut, value: showPopup)
        }
    }
}




#Preview {
    CompatibilityView()
}

//
//  PopupView.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 28.12.2024..
//

import SwiftUI

struct CompatibilityPopup: View {
    var result: String // Proslijedi rezultat kao parametar
    var onClose: () -> Void // Akcija za zatvaranje popup prozora
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(result)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
            
            Button(action: {
                onClose() 
            }) {
                Text("Close")
                    .font(.headline)
                    .padding()
                    .frame(width: 100, height: 40)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .frame(width: 300, height: 200)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.blue, lineWidth: 2)
        )
    }
}

#Preview {
    CompatibilityPopup(result: "Highly Compatible!") {
        print("Popup closed")
    }
}


//
//  TarotCardView.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 28.12.2024..
//

import SwiftUI

struct TarotCardView: View {
    @State private var selectedCard: TarotCard?
    @State private var isCardRevealed = false
    
    var body: some View {
        ZStack {
            Image("background55")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                if let card = selectedCard {
                    Image(card.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 300)
                        .padding()
                    
                    Text(card.name)
                        .font(.headline)
                        .bold()
                        .padding()
                    
                    Text(card.meaning)
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding()
                } else {
                    Text("No cards were drawn!")
                }
            }
            .onAppear {
                selectedCard = majorArcanaCards.randomElement()
            }
            .padding()
        }
    }
}

#Preview {
    TarotCardView()
}

//
//  ContentView.swift
//  horoscopeApp
//
//  Created by Tina Jureško on 27.12.2024..
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText: String = ""
    let zodiacSigns = [
            (name: "Aries", date: "Mar 21 - Apr 20"),
            (name: "Taurus", date: "Apr 21 - May 20"),
            (name: "Gemini", date: "May 21 - Jun 21"),
            (name: "Cancer", date: "Jun 22 - Jul 22"),
            (name: "Leo", date: "Jul 23 - Aug 23"),
            (name: "Virgo", date: "Aug 24 - Sep 23"),
            (name: "Libra", date: "Sep 24 - Oct 23"),
            (name: "Scorpio", date: "Oct 24 - Nov 22"),
            (name: "Sagittarius", date: "Nov 23 - Dec 21"),
            (name: "Capricorn", date: "Dec 22 - Jan 20"),
            (name: "Aquarius", date: "Jan 21 - Feb 18"),
            (name: "Pisces", date: "Feb 19 - Mar 20")
        ]
    
    var filteredZodiacs: [(name: String, date: String)] {
        if searchText.isEmpty {
            return zodiacSigns
        } else {
            return zodiacSigns.filter {$0.name.lowercased().contains(searchText.lowercased())}
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("background55")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack (spacing: 20){
                    
                    Spacer().frame(height: 30)
                    
                    TextField("Search", text: $searchText)
                        .padding(.leading, 40)
                        .padding(.trailing, 20)
                        .frame(height: 30)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.white.opacity(0.3))
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                        )
                        .padding(.top)
                        .padding(.bottom)
                        
                            
                    Spacer()
                    
                    ScrollView {
                        LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3), spacing: 20) {
                                ForEach(filteredZodiacs, id: \.name) { sign in
                                    NavigationLink(destination: HoroscopeDetailsView(zodiacSign: sign.name, date: sign.date)) {
                                        VStack {
                                            Image(sign.name.lowercased())
                                                .resizable()
                                                .frame(width: 70, height: 70)
                                                Text(sign.date)
                                                    .bold()
                                                    .font(.system(size: 12))
                                                    .foregroundStyle(.black)
                                        }
                                    }
                                   
                                }
                            }
                            .padding()
                    }
                    HStack {
                        NavigationLink (destination: TarotCardView()) {
                            Image("tarot_card")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .padding(.leading, 50)
                        }
                        Spacer()
                        NavigationLink (destination: CompatibilityView()) {
                            Image("compatibility")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .padding(.trailing, 50)
                        }
                        
                    }
                }
            }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}

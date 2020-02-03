//
//  ContentView.swift
//  WeatherApp
//
//  Created by Toni Tani on 17.1.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }

    var body: some View {
        VStack(alignment: .center) {
            
            TextField("Enter city name", text: self.$weatherVM.cityName) {
                self.weatherVM.search()
            }.font(.custom("Arial", size: 40))
                .padding()
                .fixedSize()
            
            Text(self.weatherVM.temperature)
            .font(.custom("Arial", size: 100))
                           
                           .foregroundColor(Color.black)
                           .offset(y: 100)
                           .padding()
            Spacer()
        }
    .background(Image("dark_background")
    .resizable()
    .scaledToFill()
    .clipped())
        .edgesIgnoringSafeArea([.top])
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

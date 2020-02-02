//
//  ContentView.swift
//  WeatherApp
//
//  Created by Toni Tani on 17.1.2020.
//  Copyright © 2020 Toni Tani. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            
            Spacer()
            Text("Celcius")
                .font(.title)
            Text("Lappeenranta")
                .font(.subheadline)
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

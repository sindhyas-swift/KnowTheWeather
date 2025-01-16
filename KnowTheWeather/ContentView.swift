//
//  ContentView.swift
//  KnowTheWeather
//
//  Created by SINDHYA ANOOP on 1/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

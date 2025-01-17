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
                .ignoresSafeArea(.all)
            
            
            VStack{
                Text("Cupertino CA")
                    .foregroundStyle(.white)
                    .font(.system(size: 35,weight: .medium,design: .default))
                    .padding()
                VStack{
                    Image(systemName: "sun.snow.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 180,height: 180)
                        .aspectRatio(contentMode: .fit)
                    Text("76°")
                        .font(.system(size: 70,weight: .medium,design: .default))
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

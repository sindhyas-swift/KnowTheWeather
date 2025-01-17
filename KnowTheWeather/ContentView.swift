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
            LinearGradient(gradient: Gradient(colors: [.blue,Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:8){
                Text("Cupertino CA")
                    .foregroundStyle(.white)
                    .font(.system(size: 35,weight: .medium,design: .default))
                    .padding()
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70,weight: .medium,design: .default))
                        .foregroundColor(.white)
                }
                .padding(.bottom,40)
                
                HStack(spacing:20){
                    WeatherDayView(day: "MON", temp: 76, imageName: "sun.max.fill")
                    WeatherDayView(day: "TUE", temp: 72, imageName: "cloud.sun.fill")
                    WeatherDayView(day: "WED", temp: 70, imageName: "wind.snow")
                    WeatherDayView(day: "THU", temp: 70, imageName: "sunset.fill")
                    WeatherDayView(day: "FRI", temp: 60, imageName: "snow")
                }
                Spacer()
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var day : String
    var temp : Int
    var imageName : String
    var body: some View {
        VStack{
            Text(day)
                .foregroundStyle(.white)
                .font(.system(size: 16,weight: .medium,design: .default))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text(String(temp)+"°")
                .font(.system(size: 28,weight: .medium,design: .default))
                .foregroundColor(.white)
        }
    }
}

//
//  ContentView.swift
//  KnowTheWeather
//
//  Created by SINDHYA ANOOP on 1/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView(topColor:.blue, bottomColor: Color("lightBlue"))
            
            VStack(spacing:8){
                CityTextView(cityName: "Cupertino CA")
                MainWeatherView(imageName: "cloud.sun.fill", temp: 76)
                
                HStack(spacing:20){
                    WeatherDayView(day: "MON", temp: 76, imageName: "sun.max.fill")
                    WeatherDayView(day: "TUE", temp: 72, imageName: "cloud.sun.fill")
                    WeatherDayView(day: "WED", temp: 70, imageName: "wind.snow")
                    WeatherDayView(day: "THU", temp: 70, imageName: "sunset.fill")
                    WeatherDayView(day: "FRI", temp: 60, imageName: "snow")
                }
               Spacer()
                ButtonView(buttontitle: "Change Day Time",backgroundColor: Color.white,textColor: Color.blue)
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

struct BackgroundView: View {
    var topColor : Color
    var bottomColor : Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName : String
    var body: some View {
        Text(cityName)
            .foregroundStyle(.white)
            .font(.system(size: 35,weight: .medium,design: .default))
            .padding()
    }
}

struct MainWeatherView: View {
    var imageName : String
    var temp : Int
    var body: some View {
        VStack{
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            
            Text(String(temp) + "°")
                .font(.system(size: 70,weight: .medium,design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom,40)
    }
}

struct ButtonView: View {
    var buttontitle : String
    var backgroundColor : Color
    var textColor: Color
    var body: some View {
        Button{
            print("Tapped Me")
        }label: {
            Text(buttontitle)
                .frame(width: 320,height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 20,weight: .bold,design: .default))
                .cornerRadius(10)
        }
    }
}

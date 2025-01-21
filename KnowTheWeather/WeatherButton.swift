//
//  WeatherButton.swift
//  KnowTheWeather
//
//  Created by SINDHYA ANOOP on 1/20/25.
//

import SwiftUI

struct ButtonView: View {
    var buttontitle : String
    var backgroundColor : Color
    var textColor: Color
    var body: some View {
       
            Text(buttontitle)
                .frame(width: 320,height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 20,weight: .bold,design: .default))
                .cornerRadius(10)
        }
    }


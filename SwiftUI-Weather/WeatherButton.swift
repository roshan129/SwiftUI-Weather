//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Roshan Adke on 14/04/25.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(Font.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
    
}

#Preview {
    WeatherButton(title: "Some title", textColor: .white, backgroundColor: .mint)
}

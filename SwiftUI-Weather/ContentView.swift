//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Roshan Adke on 03/04/25.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var isNight: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue,
                           bottomColor: isNight ? .gray : Color("lightBlue"))
            
            VStack {
                
                CityTextView(cityName: "Nashik, Maharashtra")

                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" :  "cloud.sun.fill", temperature: 75)

                HStack(spacing: 25) {

                    WeatherDayView(
                        day: "Sun", image: "cloud.sun.fill", temperature: 25)

                    WeatherDayView(
                        day: "Mon", image: "wind.snow",
                        temperature: 50)

                    WeatherDayView(
                        day: "Tue", image: "cloud.sun.rain.fill", temperature: 40)

                    WeatherDayView(
                        day: "Wed", image: "cloud.rain.fill", temperature: 33)

                    WeatherDayView(
                        day: "Thu", image: "tornado", temperature: 66)

                }

                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                   
                    WeatherButton(title: "Change Day Time",
                                  textColor: Color.blue, backgroundColor: Color.white)
                }

                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {

    var day: String
    var image: String
    var temperature: Int

    var body: some View {
        VStack {
            Text(day)
                .foregroundColor(.white)

            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)

            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)

        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading, endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°C")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(40)
    }
}

//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Roshan Adke on 03/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white,]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Nashik, Maharashtra")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                
                
                
        
                
            }
        }
    }
}

#Preview {
    ContentView()
}

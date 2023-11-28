//
//  ContentView.swift
//  NexGen
//
//  Created by Daval Cato on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("Welcome to NexGen Assist")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Spacer() // Spacer to push the image and text upwards
            
            GeometryReader { geometry in
                Image("Board") // Replace "Board" with your own image asset
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8) // Adjust size as needed
                    .background(Color.clear)
                    .padding()
            }
            
            Spacer() // Spacer to push the button towards the bottom
            
            Text("Get started with NexGen Assist, the ultimate business optimization tool.")
                .multilineTextAlignment(.center)
                .padding()
            
            Button(action: {
                // Action when the button is tapped
            }) {
                Text("Get Started")
                    .fontWeight(.semibold)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

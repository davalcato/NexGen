//
//  ContentView.swift
//  NexGen
//
//  Created by Daval Cato on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoginViewPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Welcome to NexGen Assist")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Spacer()
                
                GeometryReader { geometry in
                    Image("Board") // Replace "Board" with your own image asset
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8) // Adjust size as needed
                        .background(Color.clear)
                        .padding()
                }
                
                Spacer()
                
                Text("Get started with NexGen Assist, the ultimate business optimization tool.")
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button(action: {
                    isLoginViewPresented.toggle()
                }) {
                    Text("Get Started")
                        .fontWeight(.semibold)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
                .sheet(isPresented: $isLoginViewPresented) {
                    LoginView()
                }
            }
            .navigationBarHidden(true) // Hide the navigation bar
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//
//  OnBoardingPage.swift
//  NexGen
//
//  Created by Daval Cato on 11/28/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            Text("Welcome to NexGen Assist")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            GeometryReader { geometry in
                Image("Board") // Replace "Board" with your own image asset
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8) // Adjust size as needed
                    .background(Color.clear)
                    .padding()
            }
            
            Text("Get started with NexGen Assist, the ultimate business optimization tool.")
                .multilineTextAlignment(.center)
                .padding()
            
            // Add additional components or instructions here
            
            Button(action: {
                // Action when the user taps the button to continue
                // This could navigate to the next screen or dismiss the onboarding
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

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

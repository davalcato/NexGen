//
//  LoginPage.swift
//  NexGen
//
//  Created by Daval Cato on 11/28/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @Binding var showLogin: Bool // Binding to control showing this view

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    showLogin = false // Update this binding to go back to OnBoardingPage
                }) {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .foregroundColor(.blue)
                }
                Spacer()
            }
            .padding()
            
            Spacer()
            
            VStack(spacing: 20) {
                CustomTextField(icon: "envelope", title: "Email", hint: "rumenguin@gmail.com", text: $email)
                CustomTextField(icon: "lock", title: "Password", hint: "12345", text: $password)
                
                Button(action: {
                    // Perform login action here
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

// CustomTextField to represent the input fields
struct CustomTextField: View {
    var icon: String
    var title: String
    var hint: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.gray)
                .frame(width: 30)
            
            TextField(title, text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .font(.body)
                .padding(.vertical, 10)
        }
    }
}

// Preview for the LoginView
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(showLogin: .constant(true))
    }
}

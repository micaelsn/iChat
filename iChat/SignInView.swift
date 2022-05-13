//
//  ContentView.swift
//  iChat
//
//  Created by micael nascimento on 12/05/22.
//

import SwiftUI

struct SignInView: View {
    @StateObject var viewModel = SignInViewModel()
    
    var body: some View {
        VStack {
            Image("chat_logo").resizable().scaledToFit().padding()
            TextField("E-mail", text: $viewModel.email).autocapitalization(.none).disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 24.0)
                        .strokeBorder(Color(UIColor.separator),
                        style: StrokeStyle(lineWidth: 1.0)
                        )
                )
                .padding(.bottom, 20)
            SecureField("Password", text: $viewModel.password).autocapitalization(.none).disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 24.0)
                        .strokeBorder(Color(UIColor.separator),
                        style: StrokeStyle(lineWidth: 1.0)
                        )
                )
                .padding(.bottom, 30)
            Button {
                viewModel.signIn()
            } label: {
                Text("SignIn")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("GreenColor"))
                    .foregroundColor(Color.white)
                    .cornerRadius(24.0)
            }
            
            Divider()
                .padding()
            
            Button {
                print("clicked")
            } label: {
                Text("Create account")
                    .foregroundColor(Color.black)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 32)
        .background(Color.init(red: 249 / 255, green: 255 / 255, blue: 249 / 255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

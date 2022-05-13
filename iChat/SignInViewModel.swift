//
//  SignInViewModel.swift
//  iChat
//
//  Created by micael nascimento on 12/05/22.
//

import Foundation

class SignInViewModel: ObservableObject {
    var email = ""
    var password = ""
    
    func signIn() {
        print("email: \(email), senha: \(password)")
    }
}

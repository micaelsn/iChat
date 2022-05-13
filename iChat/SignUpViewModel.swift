//
//  SignUpViewModel.swift
//  iChat
//
//  Created by micael nascimento on 13/05/22.
//

import Foundation

class SignUpViewModel: ObservableObject {
    var email = ""
    var name = ""
    var password = ""
    
    func signUp() {
        print("name \(name) email: \(email), senha: \(password)")
    }
}

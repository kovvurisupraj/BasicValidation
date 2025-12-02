//
//  ContentView.swift
//  BasicValidation
//
//  Created by Supraj Kovvuri on 12/2/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var isFormValid: Bool{
        return !email.isEmpty && !password.isEmpty && email.isValidEmail
    }
    
    var body: some View {
        Form{
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button("Login"){
                
            }.disabled(!isFormValid)
        }
    }
}

#Preview {
    LoginView()
}

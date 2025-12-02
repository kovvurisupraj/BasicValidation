//
//  ContentView.swift
//  BasicValidation
//
//  Created by Supraj Kovvuri on 12/2/25.
//

import SwiftUI

struct LoginFormError{
    var email: String = ""
    var password: String = ""
}

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var loginformerror = LoginFormError()
    
    private func clearForm(){
        loginformerror = LoginFormError()
    }
    
    var isFormValid: Bool{
        
        clearForm()
        
        if email.isEmpty{
            loginformerror.email = "Email is required"
        } else if !email.isValidEmail{
            loginformerror.email = "Invalid Email Format"
        }
        
        if password.isEmpty{
            loginformerror.password = "Password is required"
        }
        
        return loginformerror.email.isEmpty && loginformerror.password.isEmpty
    }
    
    /*var isFormValid: Bool{
        return !email.isEmpty && !password.isEmpty && email.isValidEmail
    }*/
    
    var body: some View {
        Form{
            TextField("Email", text: $email)
            if !loginformerror.email.isEmpty {
                Text(loginformerror.email)
                    .font(.caption)
            }
            SecureField("Password", text: $password)
            if !loginformerror.password.isEmpty{
                Text(loginformerror.password)
                    .font(.caption)
            }
            Button("Login"){
                if isFormValid{
                    
                }
            }
        }
    }
}

#Preview {
    LoginView()
}

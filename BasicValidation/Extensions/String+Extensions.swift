//
//  String+Extensions.swift
//  BasicValidation
//
//  Created by Supraj Kovvuri on 12/2/25.
//

import Foundation

extension String{
    var isValidEmail: Bool{
        let emailRegEx = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return predicate.evaluate(with: self)
    }
}

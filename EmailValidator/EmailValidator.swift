//
//  EmailValidator.swift
//  EmailValidator
//
//  Created by Shantanu Gaurav on 09/05/24.
//

import Foundation

class EmailValidator {
    public static func validateEmail(email : String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}

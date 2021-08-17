//
//  UserDefaults+Extension.swift
//  Reddit-test
//
//  Created by Rene Santis on 17/08/21.
//

import Foundation

enum UserDefaultsKeys : String {
    case isLoggedIn
    case token
}

extension UserDefaults{

    //MARK: Check Login
    func setLoggedIn(value: Bool) {
        set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }

    func isLoggedIn()-> Bool {
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }

    //MARK: Save User Data
    func setToken(value: Any?) {
        set(value, forKey: UserDefaultsKeys.token.rawValue)        
    }

    //MARK: Retrieve User Data
    func getToken() -> Any? {
        return object(forKey: UserDefaultsKeys.token.rawValue) as Any
    }
    
    //MARK: Save User Data with custom key
    func setToken(value: Any?, key: String) {
        set(value, forKey: key)
    }
    
    //MARK: Retrieve User Data with custom key
    func getToken(key: String) -> Any? {
        return object(forKey: key) as Any
    }
}

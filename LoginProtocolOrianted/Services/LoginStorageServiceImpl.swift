//
//  LoginStorageServiceImpl.swift
//  LoginProtocolOrianted
//
//  Created by Yusuf Mert Yıldız on 18.05.2023.
//

import Foundation

class LoginStorageServiceImpl : LoginStorageService {
   
    private let storage = UserDefaults.standard
    
    var userAccesTokkenKey: String {
        return "ACCES_TOKEN"
    }
    
    func setUserAccesTokken(tokken: String) {
        storage.set(tokken, forKey: userAccesTokkenKey)
    }
    
    func getUserAccesTokken() -> String? {
        return storage.string(forKey: userAccesTokkenKey)
    }
    
    
    
}

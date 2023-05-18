//
//  LoginStorageServices.swift
//  LoginProtocolOrianted
//
//  Created by Yusuf Mert Yıldız on 18.05.2023.
//

import Foundation

protocol LoginStorageService {
    var userAccesTokkenKey : String {get}
    func setUserAccesTokken(tokken: String)
    func getUserAccesTokken() -> String?
}

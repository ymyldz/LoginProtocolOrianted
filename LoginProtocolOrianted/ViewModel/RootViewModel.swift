//
//  RootViewModel.swift
//  LoginProtocolOrianted
//
//  Created by Yusuf Mert Yıldız on 18.05.2023.
//

import Foundation

class RootViewModel {
    
    private let loginStorageServices : LoginStorageService
    
    init(loginStorageServices: LoginStorageService) {
        self.loginStorageServices = loginStorageServices
    }
    
    weak var output : RootViewModelOutput?
    
    func checkLogin() {
        if let accesToken = loginStorageServices.getUserAccesTokken() , !accesToken.isEmpty {
            output?.showMain()
        }else {
            output?.showLogin()
        }
    }
}

//
//  LoginProtocolOriantedTests.swift
//  LoginProtocolOriantedTests
//
//  Created by Yusuf Mert Yıldız on 18.05.2023.
//

import XCTest
@testable import LoginProtocolOrianted

final class LoginProtocolOriantedTests: XCTestCase {
    
    private var viewModel : RootViewModel!
    private var loginStorageServices : MockLoginStorageServices!
    private var output : MockRootViewModelOutput!
    
    override func setUpWithError() throws {
        loginStorageServices = MockLoginStorageServices()
        viewModel = RootViewModel(loginStorageServices: loginStorageServices)
        output = MockRootViewModelOutput()
        
        viewModel.output = output
        
    }
    
    override func tearDownWithError() throws {
        viewModel = nil
        loginStorageServices = nil
    }
    
    func testExample() throws {
        
        
        
    }
    
    func testShowLogin_whenLoginStorageReturnEmptyUserAccesTokken() {
        loginStorageServices.storage = [:]
        viewModel.checkLogin()
        
        XCTAssertEqual(output.check.first, .login)
    }
    
    func testShowMainApp_whenLoginStorageReturnUserAccesTokken() {
        loginStorageServices.storage["ACCES_TOKEN"] = "123ASDFSKFJN224234LKQ"
        viewModel.checkLogin()
        XCTAssertEqual(output.check.first, .mainApp)
    }
    
    class MockLoginStorageServices : LoginStorageService {
        var userAccesTokkenKey: String {
            return "ACCES_TOKEN"
        }
        var storage : [String:String] = [:]
        func setUserAccesTokken(tokken: String) {
            storage[userAccesTokkenKey] = tokken
        }
        func getUserAccesTokken() -> String? {
            return storage[userAccesTokkenKey]
        }
    }
    
    class MockRootViewModelOutput : RootViewModelOutput {
        enum Check {
            case login
            case mainApp
        }
        var check : [Check] = []
        func showMain() {
            check.append(.mainApp)
        }
        func showLogin() {
            check.append(.login)
        }
    }
}

//
//  ViewController.swift
//  LoginProtocolOrianted
//
//  Created by Yusuf Mert Yıldız on 18.05.2023.
//

import UIKit

class RootViewController: UIViewController, RootViewModelOutput {

    private let viewModel : RootViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        viewModel?.checkLogin()

    }
    init(viewModel: RootViewModel?) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        viewModel?.output = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
    
    func showMain() {
        let mainViewController = MainViewController()
        navigationController?.present(mainViewController, animated: true)
    }
    
    func showLogin() {
        let loginController = LoginViewController()
        navigationController?.present(loginController, animated: true)
    }

}


// MARK: BEGİNNER LEVEL - İF WE USE API FOR "ACCES_TOKEN" WORK BUT NOT COOL
 
//func checkLogin() {
//    if let accesToken = UserDefaults.standard.string(forKey: "ACCES_TOKEN") , !accesToken.isEmpty {
//        showMain()
//    }else {
//        showLogin()
//    }
//}
//
//func showMain() {
//    let mainViewController = MainViewController()
//    navigationController?.present(mainViewController, animated: true)
//}
//
//func showLogin() {
//    let loginController = LoginViewController()
//    navigationController?.present(loginController, animated: true)
//}

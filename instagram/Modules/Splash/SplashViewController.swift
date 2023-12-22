//
//  SplashViewController.swift
//  instagram
//
//  Created by Heba Omar94 on 06/12/2023.
//

import UIKit
import IBAnimatable

class SplashViewController: UIViewController {

    init() {
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.presentHome()
            
        }
    }
    func presentHome() {
        let vc = HomeViewController()
        //assign nav
        //let nav = AppNavController(rootViewController: vc)
       // RootRouter.presentRootScreen(with: nav)
        
        let tab = AppTabBarController()
        RootRouter.presentRootScreen(with: tab)

    }

}

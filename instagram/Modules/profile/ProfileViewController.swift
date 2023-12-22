//
//  ProfileViewController.swift
//  instagram
//
//  Created by Heba Omar94 on 06/12/2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    init() {
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "profile"

    }



}

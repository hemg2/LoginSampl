//
//  LoginViewController.swift
//  LoginSampleApp
//
//  Created by 1 on 2022/12/11.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var emailLoginButton: UIButton!
    @IBOutlet var googleLoginButton: UIButton!
    @IBOutlet var appleLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [emailLoginButton, googleLoginButton, appleLoginButton].forEach({
            $0?.layer.borderWidth = 1
            $0?.layer.borderColor = UIColor.white.cgColor
            $0?.layer.cornerRadius = 30
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    
    @IBAction func googleLoginButtonTapped(_ sender: Any) {
    }
    
    @IBAction func appleLoginButtonTapped(_ sender: Any) {
    }
}

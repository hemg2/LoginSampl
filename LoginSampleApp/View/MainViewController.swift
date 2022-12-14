//
//  MainViewController.swift
//  LoginSampleApp
//
//  Created by 1 on 2022/12/11.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
        
        let email = Auth.auth().currentUser?.email ?? "고객"
        
        welcomeLabel.text = """
        환영합니다.
        \(email)님
        """
    }
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

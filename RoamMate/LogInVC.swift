//
//  LogInVC.swift
//  RoamMate
//
//  Created by ziya on 12.07.23.
//

import UIKit

class LogInVC: UIViewController {
    
    @IBOutlet weak var userNameTextField: CustomTextField! {
        didSet {
            userNameTextField.tintColor = UIColor(named: "Orange500")
            userNameTextField.setIcon(UIImage(imageLiteralResourceName: "user"))
        }
    }
    @IBOutlet weak var passwordTextField: CustomTextField! {
        didSet {
            passwordTextField.tintColor = UIColor(named: "Orange500")
            passwordTextField.setIcon(UIImage(imageLiteralResourceName: "lock-closed"))
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTapped()
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        Routing.shared.presentForgotVC { vc in
            self.present(vc, animated: true)
        }
    }
    
    @IBAction func logInTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func fingerPrintTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        Routing.shared.presentSignUpVC { vc in
            self.present(vc, animated: true)
        }
    }
    
}

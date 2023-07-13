//
//  SignUpVC.swift
//  RoamMate
//
//  Created by ziya on 12.07.23.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var userNameTextField: CustomTextField!{
        didSet {
            userNameTextField.setIcon(UIImage(imageLiteralResourceName: "user"))
            userNameTextField.tintColor = UIColor(named: "Orange500")
        }
    }
    @IBOutlet weak var emailTextField: CustomTextField!{
        didSet{
            emailTextField.setIcon(UIImage(imageLiteralResourceName: "mail"))
            emailTextField.tintColor = UIColor(named: "Orange500")
        }
    }
    @IBOutlet weak var passwordTextField: CustomTextField!{
        didSet{
            passwordTextField.setIcon(UIImage(imageLiteralResourceName: "lock-closed"))
            passwordTextField.tintColor = UIColor(named: "Orange500")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hideKeyboardWhenTapped()

    }
    
   
    @IBAction func signUpTapped(_ sender: UIButton) {
    }
    
    @IBAction func signUpWithAppleTapped(_ sender: UIButton) {
    }
    
    @IBAction func signUpWithGoogleTapped(_ sender: UIButton) {
    }
    
    @IBAction func logInTapped(_ sender: UIButton) {
        Routing.shared.presentLogInVC { vc in
            self.present(vc, animated: true)
        }
    }
}



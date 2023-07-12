//
//  SignUpVC.swift
//  RoamMate
//
//  Created by ziya on 12.07.23.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var userNameTextField: CustomTextField!
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    
    
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
    }
}



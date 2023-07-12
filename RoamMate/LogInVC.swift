//
//  LogInVC.swift
//  RoamMate
//
//  Created by ziya on 12.07.23.
//

import UIKit

class LogInVC: UIViewController {
    
    @IBOutlet weak var userNameTextField: CustomTextField!
    
    
    @IBOutlet weak var passwordTextField: CustomTextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTapped()
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
    }
    
    @IBAction func logInTapped(_ sender: UIButton) {
    }
    
    @IBAction func fingerPrintTapped(_ sender: UIButton) {
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
    }
    
}

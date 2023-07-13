//
//  ForgotVC.swift
//  RoamMate
//
//  Created by ziya on 12.07.23.
//

import UIKit

class ForgotVC: UIViewController {

    @IBOutlet weak var emailTextField: CustomTextField! {
        didSet {
            emailTextField.tintColor = UIColor(named: "Orange500")
            emailTextField.setIcon(UIImage(imageLiteralResourceName: "mail"))
        }
    }
    
    @IBOutlet weak var phoneNumberTextField: CustomTextField! {
        didSet {
            phoneNumberTextField.tintColor = UIColor(named: "Orange500")
            phoneNumberTextField.setIcon(UIImage(imageLiteralResourceName: "phone"))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hideKeyboardWhenTapped()
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

    @IBAction func continueToOTP(_ sender: UIButton) {
        Routing.shared.presentOTPVC { vc in
            self.present(vc, animated: true)
        }
    }
    
}

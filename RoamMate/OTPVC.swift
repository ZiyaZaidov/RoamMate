//
//  OTPVC.swift
//  RoamMate
//
//  Created by ziya on 12.07.23.
//

import UIKit

class OTPVC: UIViewController {

    @IBOutlet weak var OTPTextField1: CustomTextField!
    @IBOutlet weak var OTPTextField2: CustomTextField!
    @IBOutlet weak var OTPTextField3: CustomTextField!
    @IBOutlet weak var OTPTextField4: CustomTextField!
    @IBOutlet weak var OTPTextField5: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupOTP()
    }
    
    private func setupOTP(){
        self.OTPTextField1.addTarget(self, action: #selector(textFieldDidChangeSelection), for: .editingChanged)
        self.OTPTextField2.addTarget(self, action: #selector(textFieldDidChangeSelection), for: .editingChanged)
        self.OTPTextField3.addTarget(self, action: #selector(textFieldDidChangeSelection), for: .editingChanged)
        self.OTPTextField4.addTarget(self, action: #selector(textFieldDidChangeSelection), for: .editingChanged)
        self.OTPTextField5.addTarget(self, action: #selector(textFieldDidChangeSelection), for: .editingChanged)
    }

    @objc private func textFieldDidChangeSelection( textfield: UITextField) {
        
        let text = textfield.text
        
        if text?.count == 1 {
            switch textfield {
            case OTPTextField1:
                OTPTextField2.becomeFirstResponder()
            case OTPTextField2:
                OTPTextField3.becomeFirstResponder()
            case OTPTextField3:
                OTPTextField4.becomeFirstResponder()
            case OTPTextField4:
                OTPTextField5.becomeFirstResponder()
            case OTPTextField5:
                OTPTextField5.resignFirstResponder()
            default: break
            }
        }
        
        if text?.count == 0 {
            switch textfield {
            case OTPTextField1:
                OTPTextField1.becomeFirstResponder()
            case OTPTextField2:
                OTPTextField1.becomeFirstResponder()
            case OTPTextField3:
                OTPTextField2.becomeFirstResponder()
            case OTPTextField4:
                OTPTextField3.becomeFirstResponder()
            case OTPTextField5:
                OTPTextField4.becomeFirstResponder()
            default: break
            }
        }
        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func verifyOTP(_ sender: UIButton) {
        Routing.shared.presentNewPasswordVC { vc in
            self.present(vc, animated: true)
        }
        
    }
}

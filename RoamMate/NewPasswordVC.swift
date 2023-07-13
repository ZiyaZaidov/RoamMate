//
//  NewPasswordVC.swift
//  RoamMate
//
//  Created by ziya on 13.07.23.
//

import UIKit

class NewPasswordVC: UIViewController {

    @IBOutlet weak var newPassword: CustomTextField!{
        didSet{
            newPassword.setIcon(UIImage(imageLiteralResourceName: "lock-closed"))
            newPassword.tintColor = UIColor(named: "Orange500")
        }
    }

    @IBOutlet weak var retypePassword: CustomTextField!{
        didSet{
            retypePassword.setIcon(UIImage(imageLiteralResourceName: "lock-closed"))
            retypePassword.tintColor = UIColor(named: "Orange500")
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func finishSetupTapped(_ sender: UIButton) {
    }
    
    @IBAction func resendCode(_ sender: UIButton) {
    }
    
}

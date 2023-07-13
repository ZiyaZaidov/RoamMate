//
//  OTPVC.swift
//  RoamMate
//
//  Created by ziya on 12.07.23.
//

import UIKit

class OTPVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

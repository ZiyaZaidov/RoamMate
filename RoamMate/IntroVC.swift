//
//  IntroVC.swift
//  RoamMate
//
//  Created by ziya on 11.07.23.
//

import UIKit

class IntroVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func skipButtonPressed(_ sender: UIButton) {
      
    }
    
    @IBAction func getstartedPressed(_ sender: UIButton) {
        Routing.shared.presentOnboardingVC { vc in
            self.present(vc, animated: true)
        }
    }
    
    @IBAction func signInPressed(_ sender: UIButton) {
    }
}

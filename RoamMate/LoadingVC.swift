//
//  LoadingVC.swift
//  RoamMate
//
//  Created by ziya on 13.07.23.
//

import UIKit

class LoadingVC: UIViewController {

    private var userLogged = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showInitialVC()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    private func showInitialVC(){
        
        if userLogged {
            Routing.shared.presentLogInVC { vc in
                self.present(vc, animated: true)
            }
        } else {
            Routing.shared.presentIntroVC { vc in
                self.present(vc, animated: true)
            }
        }
    }

}

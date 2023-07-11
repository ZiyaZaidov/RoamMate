//
//  KeyboardExtension.swift
//  RoamMate
//
//  Created by ziya on 11.07.23.
//

import Foundation
import UIKit

extension UIViewController {
    
    
    func hideKeyboardWhenTapped() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
    
}


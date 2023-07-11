//
//  Routing.swift
//  RoamMate
//
//  Created by ziya on 11.07.23.
//

import Foundation
import UIKit
import Shift


class Routing {
    static let shared = Routing()
    private init() {}
    
    private var controllerPresentDuration: TimeInterval = 0.5
    
    func getViewControllerForPush(id: String, storyboard: String = "Main") -> UIViewController {
        let storyBoard = UIStoryboard.init(name: storyboard, bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: id)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        return controller
    }
    
    func getViewController(id: String, storyboard: String = "Main") -> UIViewController {
        let storyBoard = UIStoryboard.init(name: storyboard, bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: id)
        controller.shift.defaultAnimation = DefaultAnimations.Scale(.down)
        controller.shift.baselineDuration = controllerPresentDuration
        controller.shift.enable()
        controller.modalPresentationStyle = .fullScreen
        return controller
    }
}

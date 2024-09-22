//
//  File.swift
//  
//
//  Created by Mohamed Aglan on 9/3/24.
//

import UIKit

extension UINavigationController {
    override open var shouldAutorotate: Bool {
        return true
    }
    
    override open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return UIApplication.shared.statusBarOrientation
    }
    
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return OrientationUtility.getUIInterfaceOrientationMask(UIApplication.shared.statusBarOrientation)
    }
    
}


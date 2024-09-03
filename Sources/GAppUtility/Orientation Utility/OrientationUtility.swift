//
//  File.swift
//  
//
//  Created by Mohamed Aglan on 9/3/24.
//

import UIKit

public struct OrientationUtility {
    public static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
        // TODO: Implement orientation locking
    }
    
    public static func unlockOrientation() {
        // Implement unlocking based on your app's settings
    }
    
    public static func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation: UIInterfaceOrientation) {
        lockOrientation(orientation)
        UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
        UINavigationController.attemptRotationToDeviceOrientation()
        UIViewController.attemptRotationToDeviceOrientation()
    }
    
    public static func getUIInterfaceOrientationMask(_ orientation: UIInterfaceOrientation) -> UIInterfaceOrientationMask {
        switch orientation {
        case .unknown:
            return .all
        case .portrait:
            return .portrait
        case .portraitUpsideDown:
            return .portraitUpsideDown
        case .landscapeLeft:
            return .landscapeLeft
        case .landscapeRight:
            return .landscapeRight
        @unknown default:
            return .all
        }
    }
}


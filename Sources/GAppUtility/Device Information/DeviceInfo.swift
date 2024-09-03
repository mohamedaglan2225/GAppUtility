//
//  File.swift
//  
//
//  Created by Mohamed Aglan on 9/3/24.
//

import UIKit

public struct DeviceInfo {
    public static var idiom: UIUserInterfaceIdiom {
        return UIDevice.current.userInterfaceIdiom
    }
    
    public static var language: String {
        return Locale.current.languageCode ?? "null"
    }
    
    public static var region: String {
        return Locale.current.regionCode ?? "null"
    }
    
    public static var orientation: UIDeviceOrientation {
        return UIDevice.current.orientation
    }
    
    public static var deviceId: String {
        let userIdKey = "appDeviceId"
        if let id = UserDefaults.standard.string(forKey: userIdKey) {
            return id
        } else {
            var id = UUID().uuidString
            if let deviceId = UIDevice.current.identifierForVendor?.uuidString {
                id = deviceId
            }
            UserDefaults.standard.set(id, forKey: userIdKey)
            return id
        }
    }
}


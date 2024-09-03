//
//  File.swift
//  
//
//  Created by Mohamed Aglan on 9/3/24.
//

import Foundation

public struct UserDefaultsUtility {
    private static let openCounterKey = "openCounter"
    
    public static var openCounter: Int {
        get { UserDefaults.standard.integer(forKey: openCounterKey) }
        set { UserDefaults.standard.set(newValue, forKey: openCounterKey) }
    }
}


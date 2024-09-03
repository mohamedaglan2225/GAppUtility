//
//  File.swift
//  
//
//  Created by Mohamed Aglan on 9/3/24.
//

import SystemConfiguration
import Foundation

public struct NetworkUtility {
    public static var isInternetAvailable: Bool {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                SCNetworkReachabilityCreateWithAddress(nil, $0)
            }
        }) else {
            return false
        }
        
        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return false
        }
        
        return flags.contains(.reachable) && (!flags.contains(.connectionRequired) || (flags.contains(.connectionOnDemand) || flags.contains(.connectionOnTraffic)) && !flags.contains(.interventionRequired))
    }
    
    public static var isConnectedToVPN: Bool {
        if let settings = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String: Any],
           let scopes = settings["__SCOPED__"] as? [String: Any] {
            return scopes.keys.contains(where: { $0.contains("tap") || $0.contains("tun") || $0.contains("ppp") })
        }
        return false
    }
}

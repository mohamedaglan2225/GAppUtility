//
//  File.swift
//  
//
//  Created by Mohamed Aglan on 9/3/24.
//

import Foundation

public struct DiskUtility {
    public static func getFreeDiskSpace() -> UInt64? {
        let fileManager = FileManager.default
        do {
            let systemAttributes = try fileManager.attributesOfFileSystem(forPath: NSHomeDirectory())
            if let freeSize = systemAttributes[.systemFreeSize] as? NSNumber {
                return freeSize.uint64Value
            }
        } catch {
            print("Error: \(error)")
        }
        return nil
    }
    
    public static func deviceRemainingFreeSpaceInBytes() -> Int64? {
        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
        guard let systemAttributes = try? FileManager.default.attributesOfFileSystem(forPath: documentDirectory),
              let freeSize = systemAttributes[.systemFreeSize] as? NSNumber else {
            return nil
        }
        return freeSize.int64Value
    }
}


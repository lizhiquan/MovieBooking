//
//  SelectableAdapter.swift
//  MovieBooking
//
//  Created by Chi-Quyen Le on 2/7/17.
//  Copyright © 2017 Chi-Quyen Le. All rights reserved.
//

import Foundation

class SelectableAdapter: NSObject {
    
    let maxSelection: Int
    let reachMaxCallback: ((Void) -> Void)?
    var stateDict = [Int: Bool]()
    
    init(maxSelection: Int = Int.max, reachMaxCallback: ((Void) -> Void)? = nil) {
        self.maxSelection = maxSelection
        self.reachMaxCallback = reachMaxCallback
    }
    
    func toggleAt(position: Int) -> Bool {
        if let _ = stateDict[position] {
            stateDict.removeValue(forKey: position)
            return true
        } else {
            if reachMaxCallback != nil && stateDict.keys.count == maxSelection {
                reachMaxCallback?()
                return false
            } else {
                stateDict[position] = true
                return true
            }
        }
        
    }
}

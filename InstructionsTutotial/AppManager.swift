//
//  AppManager.swift
//  InstructionsTutotial
//
//  Created by Sebastian Sciuba on 26/12/2020.
//

import Foundation

enum AppManager {
    static func setUserSeenAppInstructions() {
        UserDefaults.standard.set(true, forKey: "userSeenShowCase")
    }
    static func getUserSeenAppInstruction() -> Bool {
        let userSeenShowCaseObject = UserDefaults.standard.object(forKey: "userSeenShowCase")
        
        if let userSeenShowCase = userSeenShowCaseObject as? Bool {
            return userSeenShowCase
        }
        
        return false
    }
    
}

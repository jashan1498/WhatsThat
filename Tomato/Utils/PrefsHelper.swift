//
//  PrefsHelper.swift
//  Tomato
//
//  Created by jashan on 17/05/20.
//  Copyright © 2020 jashan. All rights reserved.
//

import Foundation

struct PrefsHelper{
    
    
    struct PropertyKey {
    static let userID = "USER_ID"
    }
    
    
    static func savePrefs(key:String,value:String){
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key)
    }
    
    static func getPrefs(key:String) -> String {
        let defaults = UserDefaults.standard
        return  defaults.string(forKey: key) ?? ""
       }
    
}

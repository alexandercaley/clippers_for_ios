//
//  SaveData.swift
//  Clippers
//
//  Created by Alexander Caley on 12/13/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import Foundation

class SaveData{
    let defaults = UserDefaults.standard
    var username:String
    
    init(){
        if defaults.string(forKey: "usernmae") != nil{
            username = defaults.string(forKey: "username")!
        }
        else{
            username = ""
        }
    }
    
    func saveAccount(email:String){
        UserDefaults.standard.set(email, forKey: "username")
    }
}

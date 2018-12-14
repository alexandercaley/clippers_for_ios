//
//  Clippers.swift
//  Clippers
//
//  Created by Alexander Caley on 12/13/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import Foundation

class Clippers{
    var name: String?
    var email: String?
    var rating: String?
    var distance: String?
    var years: String?
    var clipperImage: String?
    
    init(name: String?, email: String?, rating: String?, distance: String?, years: String?, clipperImage: String?){
        self.name = name
        self.email = email
        self.distance = distance
        self.years = years
        self.clipperImage = clipperImage
    }
}

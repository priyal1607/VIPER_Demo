//
//  Model.swift
//  VIPERDemo
//
//  Created by Priyal on 22/11/24.
//

import Foundation

class Model : NSObject {
    var title : String = ""
    var titledescription : String = ""
    
    init(title: String, titledescription: String) {
        self.title = title
        self.titledescription = titledescription
    }
    
}

//
//  Patient.swift
//
//  Created by Mario Moreno on 3/27/21.
//

import Foundation
import UIKit

class Patient{
    var name: String
    var sex: String
    var age: String
    var injuries: [String]
    
    init(name: String, sex: String, age: String, injuries: [String]) {
        self.name = name
        self.sex = sex
        self.age = age
        self.injuries = injuries
    }
}

//
//  PersonModel.swift
//  Sparkling
//
//  Created by Maxim Vasilyev on 17.05.2024.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var age: Int?
    var gender: String?
    var city: String?
    var company: String?
    
    init(firstName: String, lastName: String, age: Int?, gender: String?, city: String?, company: String?) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
        self.city = city
        self.company = company
    }
}

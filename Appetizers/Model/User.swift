//
//  User.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 08/01/24.
//

import Foundation

struct User: Codable{
    var firstName        = ""
    var lastName         = ""
    var email            = ""
    var birthdate        = Date()
    var extraNapkins     = false
    var unlimitedRefills = false
}

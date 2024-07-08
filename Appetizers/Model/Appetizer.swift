//
//  Appetizer.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 13/11/23.
//

import Foundation

struct Appetizer : Decodable, Identifiable {
    let id : Int
    let name : String
    let description : String
    let price : Double
    let imageURL : String
    let calories : Int
    let protein : Int
    let carbs : Int
}

struct AppetizerResponse : Decodable {
    let request : [Appetizer]
}

struct MockData {
    static let smapleAppetizer = Appetizer(id: 001,
                                      name: "TestAppatizer",
                                      description: "this is description for my appatizer",
                                      price: 99.9,
                                      imageURL: "",
                                      calories: 99,
                                      protein: 99,
                                      carbs: 99)
    
    static let appatizers = [smapleAppetizer, smapleAppetizer, smapleAppetizer,  smapleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                      name: "TestAppatizer_1",
                                      description: "this is description for my appatizer",
                                      price: 99.9,
                                      imageURL: "",
                                      calories: 99,
                                      protein: 99,
                                      carbs: 99)
    
    static let orderItemTwo = Appetizer(id: 0001,
                                      name: "TestAppatizer_2",
                                      description: "this is description for my appatizer",
                                      price: 99.9,
                                      imageURL: "",
                                      calories: 99,
                                      protein: 99,
                                      carbs: 99)
    
    static let orderItemThree = Appetizer(id: 0001,
                                      name: "TestAppatizer_3",
                                      description: "this is description for my appatizer",
                                      price: 99.9,
                                      imageURL: "",
                                      calories: 99,
                                      protein: 99,
                                      carbs: 99)
    
    static let orderItems = [orderItemOne,orderItemTwo,orderItemThree]
}


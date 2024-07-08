//
//  Alert.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 22/11/23.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title : Text
    let message : Text
    let dismissButton : Alert.Button
}

struct AlertContext{
    
    //MARK: - Network Alert
    
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message:  Text("The data sent from server is invalid. Please contact support"),
                                       dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title:  Text("Server Error"),
                                       message:  Text("Invalid response from the server. Please contact support"),
                                       dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(title:  Text("Server Error"),
                                       message:  Text("There was an issue connecting to the server. If this persist, Please contact support"),
                                       dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title:  Text("Server Error"),
                                       message:  Text("Unable to complete your request at this time. Please check your internet connection"),
                                       dismissButton: .default(Text("OK")))
    
    //MARK: - Account alert
    
    static let invalidForm = AlertItem(title:  Text("Inavlid Form"),
                                       message:  Text("Please ensure all field in the form have been filed out."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title:  Text("Server Error"),
                                       message:  Text("Please ensure your email is correct"),
                                       dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title:  Text("Profile Saved"),
                                       message:  Text("your profile information is saved sucessfully"),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title:  Text("Profile error"),
                                       message:  Text("there was an error saving or retreving your profile"),
                                       dismissButton: .default(Text("OK")))
    
    static let genricError = AlertItem(title:  Text("Internet error"),
                                       message:  Text("Facing some issue in connection can you please check your internet"),
                                       dismissButton: .default(Text("OK")))
    
}

//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 12/11/23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}

//
//  ContentView.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 12/11/23.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order : Order
    
    var body: some View {
        TabView{
           AppetizerListView()
                .tabItem {Label("Home", systemImage: "house.fill")}
            AccountView()
                 .tabItem {Label("Account", systemImage: "person.fill")}
            OrderView()
                 .tabItem {Label("Order", systemImage: "bag")}
                 .badge(order.items.count)   
        }
    }
}

#Preview {
    AppetizerTabView()
}

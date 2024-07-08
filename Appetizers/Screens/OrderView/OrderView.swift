//
//  OrderView.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 12/11/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order :Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appatizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("order placed")
                    }label: {
            //            APButton(title: "$\(order.totalPrice,specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice,specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom,25)
                }
                
                if(order.items.isEmpty){
                    EmptyState(imageName: "empty-order", message: "you have no item in your order.\n please add an appatizer!")
                }
                
            }
            .navigationTitle("🧾 Order")
        }
    }
    
}

#Preview {
    OrderView()
}

//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 31/12/23.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order : Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300,height: 225)
               
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing:40){
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protine", value: appetizer.protein)
                }
                
            }
            Spacer()
            Button{
                order.add(appetizer)
                isShowingDetail = false
              
            }label: {
//                APButton(title: "$\(appetizer.price, specifier: "%.1f") - Add to Order ")
                Text("$\(appetizer.price, specifier: "%.1f") - Add to Order")
                
            }
            .modifier(StandardButtonStyle())
//            .buttonStyle(.bordered)
//            .tint(.brandPrimary)
//            .controlSize(.large)
            .padding(.bottom,30)
                
        }
        .frame(width: 300,height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingDetail = false
        } label: {
            XDismissButton()
        },alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.smapleAppetizer, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    
    let title : String
    let value : Int
    
    var body: some View {
        VStack(spacing:5){
            Text(title)
                .font(.caption)
                .bold()
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

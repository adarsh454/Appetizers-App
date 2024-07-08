//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 14/11/23.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appatizer : Appetizer
    
    var body: some View {
        HStack{
//            AppetizerRemoteImage(urlString: appatizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120,height: 90)
//                .cornerRadius(8)
            AsyncImage(url: URL(string: appatizer.imageURL)){image in
           image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120,height: 90)
                .cornerRadius(8)
            }
        placeholder: {
            Image("food-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120,height: 90)
                .cornerRadius(8)
        }
            
            VStack(alignment:.leading,spacing: 10){
                Text(appatizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appatizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                
            }.padding()
        }
    }
}

#Preview {
    AppetizerListCell(appatizer: MockData.smapleAppetizer)
}

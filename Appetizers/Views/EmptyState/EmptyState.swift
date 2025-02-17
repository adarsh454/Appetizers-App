//
//  EmptyState.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 11/01/24.
//

import SwiftUI

struct EmptyState: View {
    let imageName : String
    let message : String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack{
               Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
                
            }
            .offset(y: -50)
        }
        
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "this is our default message and im making this message a bit to long")
}

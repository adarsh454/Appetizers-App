//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 12/11/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
   
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){ appetizser in
                   AppetizerListCell(appatizer: appetizser)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.selectedAppatizer = appetizser
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appatizers")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
            }
            .task {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            
            if viewModel.isShowingDetail{
                AppetizerDetailView(appetizer: viewModel.selectedAppatizer!,
                                    isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading{
                LoadingView()
            }
            
            }
        .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
        }
   }
}

#Preview {
    AppetizerListView()
}

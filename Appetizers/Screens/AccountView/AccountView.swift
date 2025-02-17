//
//  AccountView.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 12/11/23.
//

import SwiftUI
 
struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedTextField : FormTextField?
    
    enum FormTextField{
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal info")){
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedTextField, equals:.firstName)
                        .onSubmit {focusedTextField = .lastName}
                        .submitLabel(.next)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedTextField, equals:.lastName)
                        .onSubmit { focusedTextField = .email}
                        .submitLabel(.continue)
                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusedTextField, equals:.email)
                        .onSubmit { focusedTextField = nil}
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                    
                    DatePicker("Birthday", selection: $viewModel.user.birthdate,
                               displayedComponents: .date)
                    
                    Button{
                        viewModel.saveChanges()
                    }label: {
                        Text("Save Changes")
                    }
                    
                }
                
                Section(header: Text("Request")){
                    Toggle("Exrta Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Unlimited Refills", isOn: $viewModel.user.unlimitedRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("🧑‍💼 Account")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard){
                    Button("Dismiss"){focusedTextField = nil}
                }
            }
        }
        .onAppear{
            viewModel.retriveUser()
        }
        
           .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            
        }
        
    }
}

#Preview {
    AccountView()
}

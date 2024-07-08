//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Adarsh Chaurasia on 14/01/24.
//

import SwiftUI

struct StandardButtonStyle : ViewModifier{
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

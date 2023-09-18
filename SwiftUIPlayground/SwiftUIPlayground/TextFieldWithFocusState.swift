//
//  TextFieldWithFocusState.swift
//  SwiftUIPlayground
//
//  Created by Mariia Khutornaia on 18.09.23.
//

import SwiftUI

struct TextFieldWithFocusState: View {
    @Binding var text: String
    @FocusState var isFocused: Bool

    let placeholder: String

    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
            Color(backgroundColor)

            TextField(placeholder, text: $text)
                .focused($isFocused, equals: true)
                .foregroundColor(.black)
                .accentColor(.black)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 16)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .frame(height: 78)
        .frame(maxWidth: .infinity)
    }

    private var backgroundColor: UIColor {
        if isFocused {
            return .systemMint
        }
        return .white
    }
}

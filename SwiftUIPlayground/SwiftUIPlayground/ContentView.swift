//
//  ContentView.swift
//  SwiftUIPlayground
//
//  Created by Mariia Khutornaia on 18.09.23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var surname = ""

    @FocusState var isNameFocused: Bool
    @FocusState var isSurnameFocused: Bool

    var body: some View {
        VStack(spacing: 16) {
            Text("Introduce yourself")
                .font(.title)

            TextFieldWithFocusState(
                text: $name,
                isFocused: _isNameFocused,
                placeholder: "Enter your name")

            TextFieldWithFocusState(
                text: $surname,
                isFocused: _isSurnameFocused,
                placeholder: "Enter your surname")

            Button("Continue") {
                if name.isEmpty {
                    isNameFocused = true
                } else if surname.isEmpty {
                    isSurnameFocused = true
                } else {
                    name = ""
                    surname = ""
                    isNameFocused = false
                    isSurnameFocused = false
                }
            }
            .buttonStyle(.bordered)
            .foregroundColor(.black)
            .font(.title3)
        }
        .padding(.top, 40)
    }
}

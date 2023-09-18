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


    var body: some View {
        VStack(spacing: 16) {
            Text("Introduce yourself")
                .font(.title)

            TextFieldWithFocusState(text: $name, placeholder: "Enter your name")

            TextFieldWithFocusState(text: $surname, placeholder: "Enter your surname")
        }
        .padding(.top, 40)
    }
}

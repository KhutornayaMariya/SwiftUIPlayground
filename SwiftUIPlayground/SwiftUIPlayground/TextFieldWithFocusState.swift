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
    var commit: () -> Void = {}
    var editingChanged: (Bool) -> Void = { _ in }

    var body: some View {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                Color(backgroundColor)

                TextField(
                        placeholder,
                        text: $text,
                        onEditingChanged: { value in
                            editingChanged(value)
                        },
                        onCommit: commit
                    )
                    .focused($isFocused, equals: true)
                    .foregroundColor(.black)
                    .accentColor(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, .safeArea)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .frame(height: .textFieldHeight)
            .frame(maxWidth: .infinity)
    }
}

private extension TextFieldWithFocusState {
    var backgroundColor: UIColor {
        if isFocused {
            return .systemMint
        }
        return .white
    }
}

private extension CGFloat {
    static let safeArea: CGFloat = 16
    static let textFieldHeight: CGFloat = 78
}

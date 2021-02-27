//
//  CustomTextField.swift
//  Lebenslauf
//
//  Created by Simon Schöpke on 27.02.21.
//

import SwiftUI

struct CustomTextField: View {
    var title: String
    @Binding var text: String
    
    init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        TextField(title, text: $text)
            .modifier(PersonenAngabenStyle())
            .disableAutocorrection(true)
    }
}

struct PersonenAngabenStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(white: 0.95))
            .cornerRadius(5.0)
            .padding(8)
    }
}

//
//  ProfilBild.swift
//  Lebenslauf
//
//  Created by Simon Schöpke on 27.02.21.
//

import SwiftUI

struct ProfilBild: View {
    @Binding var bild: UIImage?
    
    var body: some View {
        if let bild = bild {
            return Image(uiImage: bild)
                .resizable()
                .modifier(Circular())
        } else {
            return Image(systemName: "person.crop.circle.fill")
                .resizable()
                .modifier(Circular())
        }
    }
}

struct Circular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(white: 0.80))
            .frame(width: 200, height: 200)
            .clipShape(Circle())
    }
}

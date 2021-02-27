//
//  FreiwilligView.swift
//  Lebenslauf
//
//  Created by Simon Schöpke on 27.02.21.
//

import SwiftUI

struct FreiwilligView: View {
    @Binding var geburtsdatumNutzen: Bool
    @Binding var geburtsdatum: Date
    @Binding var geburtsort: String
    
    var body: some View {
        VStack {
            Toggle("Geburtsdatum benutzen", isOn: $geburtsdatumNutzen)
                .modifier(PersonenAngabenStyle())
            
            if geburtsdatumNutzen {
                DatePicker("Geburtsdatum",
                           selection: $geburtsdatum,
                           in: Date(timeIntervalSinceNow: -.infinity)...Date(),
                           displayedComponents: .date)
                    .modifier(PersonenAngabenStyle())
            }

            CustomTextField("Geburtsort", text: $geburtsort)
        }
    }
}

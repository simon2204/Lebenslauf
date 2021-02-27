//
//  PflichtView.swift
//  Lebenslauf
//
//  Created by Simon Schöpke on 27.02.21.
//

import SwiftUI

struct PflichtView: View {
    @Binding var vorname: String
    @Binding var nachname: String
    @Binding var anschrift: Anschrift
    
    var body: some View {
        VStack {
            CustomTextField("Vorname", text: $vorname)
            CustomTextField("Nachname", text: $nachname)
            CustomTextField("Straße", text: $anschrift.straße)
            CustomTextField("Hausnummer", text: $anschrift.hausnummer)
            CustomTextField("Postleitzahl", text: $anschrift.postleitzahl)
            CustomTextField("Stadt", text: $anschrift.stadt)
        }
    }
}

//
//  ContentView.swift
//  Shared
//
//  Created by Simon Schöpke on 26.02.21.
//

import SwiftUI

struct ContentView: View {
    @State var personenAngabe = PersonenAngabe()
    @State var presentImagePicker = false
    @State var geburtsdatumNutzen = false
    
    var body: some View {
        ScrollView {
            VStack {
                ProfilBild(bild: $personenAngabe.foto)
                    .onTapGesture { presentImagePicker = true }
                
                Button("Foto hinzufügen") {
                    presentImagePicker = true
                }
                .padding(.bottom)
                
                HStack {
                    Text("Pflicht Angaben")
                        .padding(.leading)
                        .foregroundColor(.gray)
                    Spacer()
                }
                
                PflichtView(
                    vorname: $personenAngabe.vorname,
                    nachname: $personenAngabe.name,
                    anschrift: $personenAngabe.anschrift
                )
                .padding(.bottom)
                
                HStack {
                    Text("Freiwillige Angaben")
                        .padding(.leading)
                        .foregroundColor(.gray)
                    Spacer()
                }
                
                FreiwilligView(
                    geburtsdatumNutzen: $geburtsdatumNutzen,
                    geburtsdatum: $personenAngabe.geburtsdatum,
                    geburtsort: $personenAngabe.geburtsort
                )
                
            }
            .padding()
        }
        .sheet(isPresented: $presentImagePicker) {
            ImagePicker(sourceType: .photoLibrary, image: $personenAngabe.foto)
        }
    }
}

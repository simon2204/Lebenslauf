//
//  PersonenAngabe.swift
//  Lebenslauf
//
//  Created by Simon Schöpke on 26.02.21.
//

import UIKit

struct PersonenAngabe {
    
    // Pflichtangaben
    
    /// Vorname als Langform.
    /// Darf sich bei mehreren Vornamen auf den Rufnamen beschränken.
    var vorname: String = ""
    
    /// Name als Langform.
    var name: String = ""
    
    /// Aktuelle und vollständige postalische Adresse, also Straße, Hausnummer, Postleitzahl und Ort.
    /// Zum Beispiel: Musterstraße 32, 50667 Köln
    var anschrift: Anschrift = Anschrift()
    
    /// Im Regelfall die Handynummer.
    /// Zum Beispiel: (+49) 176 1234567
    var telefonnummer: String = ""
    
    /// Seriös klingende Adresse. Idealerweise besteht sie aus dem Vor- und Nachnamen.
    var email: String = ""
    
    
    // Freiwillige persönliche Daten
    
    /// Geburtsdatum im Format TT/MM/JJJJ
    var geburtsdatum: Date = Date()
    
    /// Stadt, in der man geboren wurde.
    /// Falls der Geburtsort im Ausland liegt, dann auch das Land nennen.
    var geburtsort: String = ""
    
    /// Staatsbürgerschaft als Adjektiv.
    var staatsangehörigkeit: String?
    
    /// Ein professionell wirkendes Foto.
    var foto: UIImage?
}

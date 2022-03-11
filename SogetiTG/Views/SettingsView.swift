//
//  SettingsView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 11/03/2022.
//

import SwiftUI

struct SettingsView: View {
    @State private var naam = ""
    @State private var woonplaats = ""
    @State private var email = ""
    @State private var telefoon = ""
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Gegevens")){
                    TextField("Naam", text: $naam)
                    TextField("Woonplaats", text: $woonplaats)
                    TextField("E-mail", text: $email)
                    TextField("Telefoon nummer", text: $telefoon)
                }
            }
        }.navigationBarTitle("Instellingen")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

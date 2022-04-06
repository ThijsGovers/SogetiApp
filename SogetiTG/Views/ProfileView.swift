//
//  ProfileView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 07/03/2022.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var userData = UserData()
    @State var naam = ""
    
    @State private var woonplaats = ""
    @State private var email = ""
    @State private var telefoon = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section(header: Text("Gegevens")){
                        TextField("Naam", text: $naam)
                        TextField("Woonplaats", text: $woonplaats)
                        TextField("E-mail", text: $email)
                        TextField("Telefoon nummer", text: $telefoon)
                    }
                }
            }
        }.navigationBarTitle("Profiel")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

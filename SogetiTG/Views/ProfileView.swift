//
//  ProfileView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 07/03/2022.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var userData = UserData()
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section(header: Text("Gegevens")){
                        TextField("Naam", text: $userData.naam)
                        TextField("Woonplaats", text: $userData.woonplaats)
                        TextField("E-mail", text: $userData.email)
                        TextField("Telefoon nummer", text: $userData.telefoon)
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

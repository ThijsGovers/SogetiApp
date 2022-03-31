//
//  KindOpgevenView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct KindOpgevenView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
            ZStack{
                Color("LightGreen")
                
                ScrollView{
                        VStack{
                            TextView(text: "Naam van het kind", placeholder: "Voornaam en Achternaam", value: $userData.naamKind)
                                .padding(.bottom, 30)
                                .padding(.top, 20)
                                
                            
                            Text("Geboortedatum van het kind")
                                .font(.title2)
                                .foregroundColor(Color("TextColor"))
                            DatePicker("Verjaardag", selection: $userData.verjaardag, in: ...Date(), displayedComponents: .date)
                                .padding()
                                .background(Color("ColorWhite"))
                                .foregroundColor(Color("TextColor"))
                                .cornerRadius(20)
                                .padding(.bottom, 30)
                            
                            GeslachtView(text: "Geslacht", value: $userData.geslacht)
                            
                            TextView(text: "Woonplaats van het kind", placeholder: "Andres", value: $userData.adres1)
                            
                            TextView(text: nil, placeholder: "Eventueel tweede adres", value: $userData.adres2)
                        }.padding()
                    
                        VStack{
                            TextView(text: "Hobby's van het kind", placeholder: "Hobby's", value: $userData.hobbys)
                       
                            TextView(text: "Verlanglijstje van het kind", placeholder: "Verlanglijstje", value: $userData.verlanglijstje)
                        
                            TextView(text: "Topcadeau", placeholder: "Top Cadeau", value: $userData.topCadeau)
                        
                            VolgendeView(destination: OpgevenView(), text: "Opgeven")
                                .padding(.top, 30)
                                .padding(.bottom, 30)
                        }.padding()
                }
            }.navigationBarTitle("Kind opgeven", displayMode: .inline)
    }
}

struct KindOpgevenView_Previews: PreviewProvider {
    static var previews: some View {
        KindOpgevenView()
    }
}

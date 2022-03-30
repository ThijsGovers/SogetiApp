//
//  KindOpgevenView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct KindOpgevenView: View {
    @State private var naamKind = ""
    @State private var leeftijdKind = ""
    @State private var adres1 = ""
    @State private var adres2 = ""
    @State private var hobbys = ""
    @State private var verlanglijstje = ""
    @State private var topCadeau = ""
    
    @State var verjaardag = Date()
    
    @State var geslacht = Gender.unspecified
    
    var body: some View {
            ZStack{
                Color("LightGreen")
                
                ScrollView{
                        VStack{
                            TextView(text: "Naam van het kind", placeholder: "Voornaam en Achternaam", value: $naamKind)
                                .padding(.bottom, 30)
                                .padding(.top, 20)
                                
                            
                            Text("Geboortedatum van het kind")
                                .font(.title2)
                                .foregroundColor(Color("TextColor"))
                            DatePicker("Verjaardag", selection: $verjaardag, in: ...Date(), displayedComponents: .date)
                                .padding()
                                .background(Color("ColorWhite"))
                                .foregroundColor(Color("TextColor"))
                                .cornerRadius(20)
                                .padding(.bottom, 30)
                            
                            GeslachtView(text: "Geslacht", value: $geslacht)
                            
                            TextView(text: "Woonplaats van het kind", placeholder: "Andres", value: $adres1)
                            
                            TextView(text: nil, placeholder: "Eventueel tweede adres", value: $adres2)
                        }.padding()
                    
                        VStack{
                            TextView(text: "Hobby's van het kind", placeholder: "Hobby's", value: $hobbys)
                       
                            TextView(text: "Verlanglijstje van het kind", placeholder: "Verlanglijstje", value: $verlanglijstje)
                        
                            TextView(text: "Topcadeau", placeholder: "Top Cadeau", value: $topCadeau)
                        
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

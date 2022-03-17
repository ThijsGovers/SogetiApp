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
    
    var body: some View {
            ZStack{
                Color("LightGreen")
                
                VStack{
                    Text("Naam van het kind")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                    TextField("Voornaam en achternaam", text: $naamKind)
                        .padding()
                        .background(Color("ColorWhite"))
                        .cornerRadius(20)
                        
                    
                    Text("Leeftijd van het kind")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                    TextField("Leeftijd", text: $leeftijdKind)
                        .padding()
                        .background(Color("ColorWhite"))
                        .cornerRadius(20)
                        .padding()
                    
                    Text("Geslacht")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                    HStack{
                        Image(systemName: "Circle.fill").foregroundColor(.white).font(.title2)
                            .padding()
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                            .padding()
                        Image(systemName: "Circle.fill").foregroundColor(.white).font(.title2)
                            .padding()
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                            .padding()
                    }
                    
                    Text("Woonplaats van het kind")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                    TextField("Adres", text: $adres1)
                        .padding()
                        .background(Color("ColorWhite"))
                        .cornerRadius(20)
                        .padding()
                    TextField("Eventueel tweede adres", text: $adres2)
                        .padding()
                        .background(Color("ColorWhite"))
                        .cornerRadius(20)
                        .padding()
                }.padding()
                
            }.navigationBarTitle("Kind opgeven", displayMode: .inline)
    }
}

struct KindOpgevenView_Previews: PreviewProvider {
    static var previews: some View {
        KindOpgevenView()
    }
}

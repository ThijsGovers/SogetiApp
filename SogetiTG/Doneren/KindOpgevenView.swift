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
    
    var body: some View {
            ZStack{
                Color("LightGreen")
                
                ScrollView{
                    VStack{
                        VStack{
                            Text("Naam van het kind")
                                .font(.title2)
                                .foregroundColor(Color("TextColor"))
                                .padding(.top, 50)
        //                  TextView(text: "Voornaam en Achternaam")
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
                            TextField("Eventueel tweede adres", text: $adres2)
                                .padding()
                                .background(Color("ColorWhite"))
                                .cornerRadius(20)
                        }.padding()
                    }
                    
                    VStack{
                        Text("Hobby's van het kind")
                            .font(.title2)
                            .foregroundColor(Color("TextColor"))
                        TextField("Hobby's", text: $hobbys)
                            .padding()
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                        Text("Verlanglijstje van het kind")
                            .font(.title2)
                            .foregroundColor(Color("TextColor"))
                        TextField("Verlanglijstje", text: $verlanglijstje)
                            .padding()
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                        Text("Topcadeau")
                            .font(.title2)
                            .foregroundColor(Color("TextColor"))
                        TextField("Top Cadeau", text: $topCadeau)
                            .padding()
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                        
                        VolgendeView(destination: BedanktView(), text: "Opgeven")
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

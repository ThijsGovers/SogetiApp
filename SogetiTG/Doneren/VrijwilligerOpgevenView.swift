//
//  VrijwilligerOpgevenView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct VrijwilligerOpgevenView: View {
    @State private var vrijwilligerNaam = ""
    @State private var vrijwilligerWoonplaats = ""
    
    @State var cadeauOpslag: Bool = true
    @State var cadeauInpakken: Bool = true
    @State var cadeauVerjaardag: Bool = true
    @State var cadeauSint: Bool = true
    @State var cadeauKerst: Bool = true
    
    var body: some View {
            ZStack{
                Color("LightGreen")
                VStack{
                    Spacer()
                    Text("Naam van de vrijwilliger")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                    TextField("Naam", text: $vrijwilligerNaam)
                        .padding()
                        .background(Color("ColorWhite"))
                        .cornerRadius(20)
                        .padding()
                    
                    Spacer()
                    Text("Woonplaats van de vrijwilliger")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                        
                    TextField("Woonplaats", text: $vrijwilligerWoonplaats)
                        .padding()
                        .background(Color("ColorWhite"))
                        .cornerRadius(20)
                        .padding()
                    
                    Spacer()
                    VStack{
                        Toggle(isOn: $cadeauOpslag) {
                            Text("Cadeau opslag")
                        }
                        Toggle(isOn: $cadeauInpakken) {
                            Text("Cadeaus inpakken")
                        }
                        Toggle(isOn: $cadeauVerjaardag) {
                            Text("Cadeaus op verjaardag")
                        }
                        Toggle(isOn: $cadeauSint) {
                            Text("Cadeaus op kerst")
                        }
                        Toggle(isOn: $cadeauKerst) {
                            Text("Cadeaus op sinterklaas")
                        }
                    }.padding()
                    
                    Spacer()
                    VolgendeView(destination: VrijwilligerDatum(), text: "Volgende")
                        .padding(.bottom, 50)
                    
                }
            }.navigationBarTitle("Vrijwilliger opgeven", displayMode: .inline)
    }
}

struct VrijwilligerOpgevenView_Previews: PreviewProvider {
    static var previews: some View {
        VrijwilligerOpgevenView()
    }
}

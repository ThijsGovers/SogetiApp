//
//  VrijwilligerOpgevenView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct VrijwilligerOpgevenView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
            ZStack{
                Color("LightGreen")
                VStack{
                    Spacer()
                    TextView(text: "Naam van de vrijwilliger", placeholder: "Naam", value: $userData.vrijwilligerNaam)
                    
                    
                    
                    TextView(text: "Woonplaats van de vrijwilliger", placeholder: "Woonplaats", value: $userData.vrijwilligerWoonplaats)
                    
                    
                    Spacer()
                    VStack{
                        Toggle(isOn: $userData.cadeauOpslag) {
                            Text("Cadeau opslag")
                        }
                        Toggle(isOn: $userData.cadeauInpakken) {
                            Text("Cadeaus inpakken")
                        }
                        Toggle(isOn: $userData.cadeauVerjaardag) {
                            Text("Cadeaus op verjaardag")
                        }
                        Toggle(isOn: $userData.cadeauSint) {
                            Text("Cadeaus op kerst")
                        }
                        Toggle(isOn: $userData.cadeauKerst) {
                            Text("Cadeaus op sinterklaas")
                        }
                    }
                    
                    Spacer()
                    VolgendeView(destination: VrijwilligerDatum(), text: "Volgende")
                        .padding(.bottom, 50)
                    
                }.padding()
            }.navigationBarTitle("Vrijwilliger opgeven", displayMode: .inline)
    }
}

struct VrijwilligerOpgevenView_Previews: PreviewProvider {
    static var previews: some View {
        VrijwilligerOpgevenView()
    }
}

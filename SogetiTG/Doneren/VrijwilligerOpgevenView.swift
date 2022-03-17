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
                    
                    
                    Text("Woonplaats van de vrijwilliger")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                        .padding(.top, 50)
                    TextField("Woonplaats", text: $vrijwilligerWoonplaats)
                        .padding()
                        .background(Color("ColorWhite"))
                        .cornerRadius(20)
                        .padding()
                    
                    Spacer()
                    VolgendeView(destination: VrijwilligerDatum(), text: "Volgende")
                    Spacer()
                }
            }.navigationBarTitle("Vrijwilliger opgeven", displayMode: .inline)
    }
}

struct VrijwilligerOpgevenView_Previews: PreviewProvider {
    static var previews: some View {
        VrijwilligerOpgevenView()
    }
}

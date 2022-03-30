//
//  VrijwilligerDatum.swift
//  SogetiTG
//
//  Created by Thijs Govers on 16/03/2022.
//

import SwiftUI

struct VrijwilligerDatum: View {
    var body: some View {
            ZStack{
                Color("LightGreen")
                
                VStack{
                    Spacer()
                    Text("Datum opgeven")
                    Spacer()
                    VolgendeView(destination: OpgevenView(), text: "Opgeven")
                    Spacer()
                }
            }.navigationBarTitle("Vrijwilliger opgeven", displayMode: .inline)
    }
}

struct VrijwilligerDatum_Previews: PreviewProvider {
    static var previews: some View {
        VrijwilligerDatum()
    }
}

//
//  VrijwilligerDatum.swift
//  SogetiTG
//
//  Created by Thijs Govers on 16/03/2022.
//

import SwiftUI

struct VrijwilligerDatum: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
                
                Text("Datum opgeven")
                
            }.navigationBarTitle("Vrijwilliger opgeven", displayMode: .inline)
        }.ignoresSafeArea()
    }
}

struct VrijwilligerDatum_Previews: PreviewProvider {
    static var previews: some View {
        VrijwilligerDatum()
    }
}

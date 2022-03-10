//
//  VrijwilligerOpgevenView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct VrijwilligerOpgevenView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
            }.navigationBarTitle("Vrijwilliger opgeven", displayMode: .inline)
        }.ignoresSafeArea()
    }
}

struct VrijwilligerOpgevenView_Previews: PreviewProvider {
    static var previews: some View {
        VrijwilligerOpgevenView()
    }
}

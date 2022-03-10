//
//  KindOpgevenView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct KindOpgevenView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
            }.navigationBarTitle("Kind opgeven", displayMode: .inline)
        }.ignoresSafeArea()
    }
}

struct KindOpgevenView_Previews: PreviewProvider {
    static var previews: some View {
        KindOpgevenView()
    }
}

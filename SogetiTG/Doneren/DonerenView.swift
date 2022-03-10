//
//  DonerenView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct DonerenView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
            }.navigationBarTitle("Doneren", displayMode: .inline)
        }.ignoresSafeArea()
    }
}

struct DonerenView_Previews: PreviewProvider {
    static var previews: some View {
        DonerenView()
    }
}

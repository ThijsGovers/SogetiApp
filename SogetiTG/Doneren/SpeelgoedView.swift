//
//  SpeelgoedView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 14/03/2022.
//

import SwiftUI

struct SpeelgoedView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
                VStack{
                    Text("Nieuws scherm")
                    Text("Dit scherm zal buiten de opdracht vallen")
                }
            }.navigationBarTitle("Nieuws")
        }.ignoresSafeArea()
    }
}

struct SpeelgoedView_Previews: PreviewProvider {
    static var previews: some View {
        SpeelgoedView()
    }
}

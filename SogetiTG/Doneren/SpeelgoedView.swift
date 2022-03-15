//
//  SpeelgoedView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 14/03/2022.
//

import SwiftUI

struct SpeelgoedView: View {
    @State private var speelgoed = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
                VStack{
                    Text("Wat wilt u doneren?")
                    TextField("Voorwerp", text: $speelgoed)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                        .padding()
                        
                    
                }
            }.navigationBarTitle("Doneren", displayMode: .inline)
        }.ignoresSafeArea()
    }
}

struct SpeelgoedView_Previews: PreviewProvider {
    static var previews: some View {
        SpeelgoedView()
    }
}

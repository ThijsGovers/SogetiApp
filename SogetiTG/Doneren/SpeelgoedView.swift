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
            ZStack{
                Color("LightGreen")
                VStack{
                    Spacer()
                    Text("Wat wilt u doneren?")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                    
                    TextField("Voorwerp", text: $speelgoed)
                        .padding()
                        .background(Color("ColorWhite"))
                        .cornerRadius(20)
                        .padding()
                   
                    Spacer()
                    Text("Foto toevoegen van het voorwerp")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                    
                    Image(systemName: "camera.fill")
                        .font(.system(size: 50))
                        .frame(width: 50, height: 50, alignment: .center)
                        .padding(30)
                        .foregroundColor(Color("AccentColor"))
                        .background(Color("ColorWhite"))
                        .cornerRadius(20)
                    Spacer()
                    VolgendeView(destination: BedanktGeldView(), text: "Doneren")
                    Spacer()
                }
            }.navigationBarTitle("Doneren", displayMode: .inline)
    }
}

struct SpeelgoedView_Previews: PreviewProvider {
    static var previews: some View {
        SpeelgoedView()
    }
}

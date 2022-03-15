//
//  BedanktView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 15/03/2022.
//

import SwiftUI

struct BedanktView: View {
    var body: some View {
        
            ZStack{
                Color("LightGreen")
                VStack{
                    Spacer(minLength: 300)
                    Text("Bedankt voor uw donatie!")
                        .font(.largeTitle)
                        .padding(30)
                    Spacer()
                    VolgendeView(destination: HomeView(), text: "Hoofdpagina")
                    Spacer()
                }
            
        }.ignoresSafeArea()
    }
}

struct BedanktView_Previews: PreviewProvider {
    static var previews: some View {
        BedanktView()
    }
}

//
//  OpgevenView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 30/03/2022.
//

import SwiftUI

struct OpgevenView: View {
    var body: some View {
        ZStack{
            Color("LightGreen")
            
            VStack{
                Spacer(minLength: 300)
                Text("Bedankt voor het opgeven!")
                    .font(.largeTitle)
                    .foregroundColor(Color("TextColor"))
                    .padding(30)
                    .multilineTextAlignment(.center)
                Spacer()
                VolgendeView(destination: HomeView(), text: "Hoofdpagina")
                Spacer()
            }
        }
    }
}

struct OpgevenView_Previews: PreviewProvider {
    static var previews: some View {
        OpgevenView()
    }
}

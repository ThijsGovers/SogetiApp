//
//  GeldView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 14/03/2022.
//

import SwiftUI

struct GeldView: View {
    @State private var bedrag = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
                VStack{
                    Text("Hoeveel wilt u doneren?")
                        .font(.title)
                        .foregroundColor(Color("TextColor"))
                        .padding(.bottom, 50)
                    
                        HStack{
                            Spacer()
                            Text("€").font(.title)
                            TextField("Bedrag", text: $bedrag)
                                .frame(width: 100, height: 100, alignment: .center)
                                .multilineTextAlignment(TextAlignment.center)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(20)
                            Spacer()
                        }.padding(.horizontal, 20)
                    
                    VolgendeView(destination: BedanktView(), text: "Doneren")
                }
            }.navigationBarTitle("Doneren", displayMode: .inline)
        }.ignoresSafeArea()
    }
}

struct GeldView_Previews: PreviewProvider {
    static var previews: some View {
        GeldView()
    }
}

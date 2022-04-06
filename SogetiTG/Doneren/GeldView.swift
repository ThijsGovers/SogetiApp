//
//  GeldView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 14/03/2022.
//

import SwiftUI

struct GeldView: View {
    @State private var bedrag = 10.0
    
    var body: some View {
            ZStack{
                Color("LightGreen")
                VStack{
                    Spacer()
                    Text("Hoeveel wilt u doneren?")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                        .padding(.bottom, 50)
                    
                        
                            Spacer()
                            TextField("Bedrag", value: $bedrag, format: .currency(code: Locale.current.currencyCode ?? "EU"))
                                .keyboardType(.decimalPad)
                                .frame(width: 100, height: 100, alignment: .center)
                                .multilineTextAlignment(TextAlignment.center)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(20)
                            Spacer()
                        
                    Spacer()
                    VolgendeView(destination: BedanktView(), text: "Doneren")
                    Spacer()
                }
            }.navigationBarTitle("Doneren", displayMode: .inline)
    }
}

struct GeldView_Previews: PreviewProvider {
    static var previews: some View {
        GeldView()
    }
}

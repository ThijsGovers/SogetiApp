//
//  BedanktGeldView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 15/03/2022.
//

import SwiftUI

struct BedanktGeldView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
            ZStack{
                Color("LightGreen")
                VStack{
                    Spacer(minLength: 300)
                    Text("Bedankt voor uw donatie van \(bedrag)!")
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
    var bedrag: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency

        let total = userData.bedrag
        return formatter.string(from: NSNumber(value: total)) ?? ""}
}

struct BedanktView_Previews: PreviewProvider {
    static var previews: some View {
        BedanktGeldView()
    }
}

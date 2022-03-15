//
//  VolgendeView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 14/03/2022.
//

import SwiftUI

struct VolgendeView<Destination>: View where Destination: View {
    let destination: Destination
    let text: String
    
    var body: some View {
        NavigationLink(destination: destination) {
            HStack(alignment: .center) {
                Spacer()
                Text(text)
                Spacer()
            }
            .padding()
            .background(Color("AccentPurple"))
            .cornerRadius(30)
            .foregroundColor(Color.white)
        }.padding(.horizontal, 80)
    }
}

//struct VolgendeView_Previews: PreviewProvider {
//    static var previews: some View {
//        VolgendeView()
//    }
//}

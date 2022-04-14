//
//  Button2View.swift
//  SogetiTG
//
//  Created by Thijs Govers on 14/04/2022.
//

import SwiftUI

struct Button2View<Destination>: View where Destination: View {
    let destination: Destination
    let isActive: Binding <Bool>
    let text: String
    
    var body: some View {
        NavigationLink(destination: destination, isActive: isActive) {
            HStack(alignment: .center, spacing: 0) {
                Spacer()
                Text(text)
                Spacer()
            }.padding()
            .foregroundColor(Color("TextColor"))
            .background(Color("ColorWhite"))
            .cornerRadius(20)
        }.padding(.horizontal, 40)
    }
}


//struct Button2View_Previews: PreviewProvider {
//    static var previews: some View {
//        Button2View()
//    }
//}

//
//  ButtonView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 10/03/2022.
//

import SwiftUI

struct ButtonView<Destination>: View where Destination: View {
//navview    @EnvironmentObject var appState: AppState
    let destination: Destination
    let text: String
    
    var body: some View {
        NavigationLink(destination: destination) {
            HStack(alignment: .center, spacing: 0) {
                Spacer()
                Text(text)
                Spacer()
            }.padding()
            .foregroundColor(Color("TextColor"))
            .background(Color("ColorWhite"))
            .cornerRadius(20)
        }.padding(.horizontal, 40)
//navview .isDetailLink(false)
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}

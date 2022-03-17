//
//  TextView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 17/03/2022.
//

import SwiftUI

struct TextView<Label> where Label : View {
//struct TextView: View {
    
    @State private var textInput = ""
    let text: String
    
    var body: some View {
        TextField(text, text: $textInput)
            .padding()
            .background(Color("ColorWhite"))
            .cornerRadius(20)
    }
}

//struct TextView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextView()
//    }
//}

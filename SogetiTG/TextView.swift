//
//  TextView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 17/03/2022.
//

import SwiftUI

struct TextView : View {
    
    let text: String?
    let placeholder: String
    let value: Binding<String>
    
    var body: some View {
        VStack{
            if let text = text {
                Text(text)
                    .font(.title2)
                    .foregroundColor(Color("TextColor"))
                    .padding(.top, 50)
            }
            
            TextField(placeholder, text: value)
                .padding()
                .background(Color("ColorWhite"))
                .cornerRadius(20)
        }
    }
}
//struct TextView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextView()
//    }
//}

//
//  GeslachtView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 24/03/2022.
//

import Foundation
import SwiftUI

struct GeslachtView : View {

    let text: String
    let value: Binding<Gender>

    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(Color("TextColor"))

        HStack{
            Button {
                value.wrappedValue = .male
            } label: {
                VStack{
                    Image(systemName: value.wrappedValue == .male ? "circle.fill" : "circle")
                    Text("Man")
                }
            }


            Button {
                value.wrappedValue = .female
            } label: {
                VStack{
                    Image(systemName: value.wrappedValue == .female ? "circle.fill" : "circle")
                    Text("Vrouw")
                }
            }
        }

    }
}


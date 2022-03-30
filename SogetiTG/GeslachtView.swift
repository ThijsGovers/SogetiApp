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
            Spacer()
            Button {
                value.wrappedValue = .male
            } label: {
                VStack{
                    if value.wrappedValue == .male {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 50))
                            .padding(30)
                            .foregroundColor(.white)
                            .background(Color("BoyBlue"))
                            .cornerRadius(20)
                    } else {
                        Image(systemName: "person.circle")
                            .font(.system(size: 50))
                            .padding(30)
                            .foregroundColor(Color("BoyBlue"))
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                    }
                    //Image(systemName: value.wrappedValue == .male ? "circle.fill" : "circle")
                    Text("Man")
                        .foregroundColor(Color("TextColor"))
                }
            }

            Spacer()
            Button {
                value.wrappedValue = .female
            } label: {
                VStack{
                    if  value.wrappedValue == .female{
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 50))
                            .padding(30)
                            .foregroundColor(.white)
                            .background(Color("GirlPink"))
                            .cornerRadius(20)
                    } else {
                        Image(systemName: "person.circle")
                            .font(.system(size: 50))
                            .padding(30)
                            .foregroundColor(Color("GirlPink"))
                            .background(Color("ColorWhite"))
                            .cornerRadius(20)
                    }
                    //Image(systemName: value.wrappedValue == .female ? "circle.fill" : "circle")
                    Text("Vrouw")
                        .foregroundColor(Color("TextColor"))
                }
            }
            Spacer()
        }

    }
}


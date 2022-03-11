//
//  DonerenView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct DonerenView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
                
                VStack{
                    Text("Wat wilt u doneren?")
                        .font(.title)
                        .foregroundColor(Color("TextColor"))
                        .padding(.bottom, 50)
                    
                    HStack{
                        Spacer()
                        VStack{
                            Image(systemName: "eurosign.circle")
                                .font(.system(size: 50))
                                .padding(30)
                                .background(Color.white)
                                .cornerRadius(20)
                                Text("Geld")
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "gift")
                                .font(.system(size: 50))
                                .padding(30)
                                .background(Color.white)
                                .cornerRadius(20)
                            Text("Speelgoed")
                        }
                        Spacer()
                    }
                }
                
            }.navigationBarTitle("Doneren", displayMode: .inline)
        }.ignoresSafeArea()
    }
}

struct DonerenView_Previews: PreviewProvider {
    static var previews: some View {
        DonerenView()
    }
}

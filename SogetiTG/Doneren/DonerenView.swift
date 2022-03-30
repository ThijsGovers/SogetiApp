//
//  DonerenView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct DonerenView: View {
    var body: some View {
            ZStack{
                Color("LightGreen")
                
                VStack{
                    Text("Wat wilt u doneren?")
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                        .padding(.bottom, 50)
                    
                    HStack{
                        Spacer()
                        VStack{
                            NavigationLink(
                                destination: GeldView() ,
                                label: {
                                    VStack{
                                        Image(systemName: "eurosign.circle")
                                            .font(.system(size: 50))
                                            .padding(30)
                                            .foregroundColor(Color("AccentColor"))
                                            .background(Color("ColorWhite"))
                                            .cornerRadius(20)
                                    }
                                })
                            Text("Geld")
                                .foregroundColor(Color("TextColor"))
                        }
                        Spacer()
                        VStack{
                            NavigationLink(
                                destination: SpeelgoedView() ,
                                label: {
                                    VStack{
                                        Image(systemName: "gift")
                                            .font(.system(size: 50))
                                            .padding(30)
                                            .foregroundColor(Color("AccentColor"))
                                            .background(Color("ColorWhite"))
                                            .cornerRadius(20)
                                    }
                                })
                            Text("Speelgoed")
                                .foregroundColor(Color("TextColor"))
                        }
                        Spacer()
                    }
                    
                }
                
            }.navigationBarTitle("Doneren", displayMode: .inline)
    }
}

struct DonerenView_Previews: PreviewProvider {
    static var previews: some View {
        DonerenView()
    }
}

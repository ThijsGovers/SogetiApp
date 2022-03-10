//
//  HelpView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        
        ZStack{
            Color("LightGreen")
            
            VStack{
                NavigationLink(destination: DonerenView()) {
                    HStack(alignment: .center, spacing: 0) {
                        Spacer()
                        Text("Doneren")
                        Spacer()
                    }.padding()
                        .padding(.horizontal, 80)
                        .background(Color(.white))
                        .cornerRadius(20)
                }.padding(.horizontal, 40)
                
                NavigationLink(destination: VrijwilligerOpgevenView()) {
                    Text("Vrijwilliger opgeven")
                        .padding()
                        .padding(.horizontal, 80)
                        .background(Color(.white))
                        .cornerRadius(20)
                }
                
                NavigationLink(destination: KindOpgevenView()) {
                    Text("Kind opgeven")
                        .padding()
                        .padding(.horizontal, 80)
                        .background(Color(.white))
                        .cornerRadius(20)
                }
            }
            
        }.ignoresSafeArea()
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}

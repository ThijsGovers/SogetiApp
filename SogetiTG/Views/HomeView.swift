//
//  HomeView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 07/03/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color("LightGreen")
            
            NavigationLink(destination: HelpView()) {
                Text("Ik wil helpen!")
                    .foregroundColor(Color("TextColor"))
                    .padding()
                    .padding(.horizontal, 80)
                    .background(Color(.white))
                    .cornerRadius(20)
            }
            
        }.ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

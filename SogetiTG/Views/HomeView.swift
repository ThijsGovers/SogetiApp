//
//  HomeView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 07/03/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
            
                ButtonView(destination: HelpView(), text: "Ik wil helpen!")
            }.navigationBarTitle("App Naam")
            .toolbar{
                Button {
//                    NavigationLink(destination: HelpView())
                } label: {
                    Label("save", systemImage: "slider.horizontal.3")
                }
            }
        }.ignoresSafeArea()
            
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

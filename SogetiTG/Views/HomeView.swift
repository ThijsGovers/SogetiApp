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
            
                NavigationLink(destination: HelpView()) {
                    Text("Ik wil helpen!")
                        .foregroundColor(Color("TextColor"))
                        .padding()
                        .padding(.horizontal, 80)
                        .background(Color(.white))
                        .cornerRadius(20)
                }
            }.navigationBarTitle("Home")
            .toolbar{
                Button {
                    print("saved")
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

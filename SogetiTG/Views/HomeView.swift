//
//  HomeView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 07/03/2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject var userData = UserData()

    
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
            //
                ButtonView2(destination: HelpView(), isActive: $userData.isActive, text: "Ik wil helpen!")
            }
            
            .navigationBarTitle("App Naam")
            .toolbar{
                NavigationLink(
                    destination: SettingsView() ,
                    label: {
                        Image(systemName: "slider.horizontal.3")
                    })
            }
        }
        .environmentObject(userData)
        .ignoresSafeArea()
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

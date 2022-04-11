//
//  HomeView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 07/03/2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject var userData = UserData()
    
//navview    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
            
                ButtonView(destination: HelpView(), text: "Ik wil helpen!")
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
//navview
//        .onReceive(self.appState.$moveToRoot) { moveToRoot in
//                        if moveToRoot {
//                            print("Move to dashboard: \(moveToRoot)")
//                            //self.isView1Active = false
//                            self.appState.moveToRoot = false
//                        }
//                    }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  ContentView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 03/03/2022.
//

import SwiftUI
//import CoreData

enum Tabs : String {
    case news
    case home
    case profile
}

struct ContentView: View {
    
    @State var selectedTab: Tabs = .home
    
    var body: some View {
        NavigationView{
            TabView(selection: $selectedTab) {
                    NewsView()
                        .tabItem {Label("Nieuws", systemImage: "exclamationmark.bubble.fill") }
                        .tag(Tabs.news)
                    
                    HomeView()
                        .tabItem {Label("Home", systemImage: "house") }
                        .tag(Tabs.home)
                    
                    ProfileView()
                        .tabItem {Label("Profiel", systemImage: "person") }
                        .tag(Tabs.profile)
                
            }.navigationBarTitle(selectedTab.rawValue.capitalized , displayMode: .inline)
                .accentColor(Color("AccentPurple"))
                .toolbar{
                    Button("Instellingen") {
                        print("saved")
                    }
                }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//
//  ContentView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 03/03/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
            
        TabView{
                NewsView()
                    .tabItem() {
                        Image(systemName: "exclamationmark.bubble.fill")
                        Text("Niews")
                    }
                
                HomeView()
                    .tabItem() {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                ProfileView()
                    .tabItem() {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

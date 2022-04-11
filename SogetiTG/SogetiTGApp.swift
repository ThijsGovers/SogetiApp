//
//  SogetiTGApp.swift
//  SogetiTG
//
//  Created by Thijs Govers on 03/03/2022.
//

import SwiftUI

@main
struct SogetiTGApp: App {
    let persistenceController = PersistenceController.shared
    
//navview    let appState = AppState()

    var body: some Scene {
        WindowGroup {
            ContentView()
            //HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                
//navview                .environmentObject(appState)
        }
    }
}

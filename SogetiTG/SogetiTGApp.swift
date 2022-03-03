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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

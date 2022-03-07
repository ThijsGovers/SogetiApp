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
        ZStack{
            Color("LightGreen")
            
            VStack{
                Text("test")
                Text("test 2")
            }
        }.ignoresSafeArea()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

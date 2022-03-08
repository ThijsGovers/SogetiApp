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
                VStack{
                    Text("Beginscherm")
                }
        }.ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

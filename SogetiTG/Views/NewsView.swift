//
//  NewsView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 07/03/2022.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
                VStack{
                    Text("Nieuws scherm")
                    Text("Dit scherm zal buiten de opdracht vallen")
                }
            }.navigationBarTitle("Nieuws")
        }.ignoresSafeArea()
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}

//
//  NewsView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 07/03/2022.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        ZStack{
            Color("LightGreen")
                Text("Hello, World!")
        }.ignoresSafeArea()
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}

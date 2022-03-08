//
//  ProfileView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 07/03/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Color("LightGreen")
                Text("Profiel")
        }.ignoresSafeArea()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

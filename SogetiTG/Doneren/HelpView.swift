//
//  HelpView.swift
//  SogetiTG
//
//  Created by Thijs Govers on 08/03/2022.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("LightGreen")
            
                VStack(spacing: 20){
                    ButtonView(destination: DonerenView(), text: "Doneren")
                    
                    ButtonView(destination: VrijwilligerOpgevenView(), text: "Vrijwilliger opgeven")
                    
                    ButtonView(destination: KindOpgevenView(), text: "Kind opgeven")
                }
            }.navigationBarTitle("Help mee!")
        }.ignoresSafeArea()
        
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}

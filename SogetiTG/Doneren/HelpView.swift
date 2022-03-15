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
                    Spacer()
                    Text("Hoe wilt u helpen?")
                        .font(.title2)
                        .padding(.bottom, 50)
                        .foregroundColor(Color("TextColor"))
                    
                    ButtonView(destination: DonerenView(), text: "Doneren")
                    
                    ButtonView(destination: VrijwilligerOpgevenView(), text: "Vrijwilliger opgeven")
                    
                    ButtonView(destination: KindOpgevenView(), text: "Kind opgeven")
                    Spacer()
                }
            }.navigationBarTitle("Help mee!", displayMode: .inline)
        }.ignoresSafeArea()
        
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}

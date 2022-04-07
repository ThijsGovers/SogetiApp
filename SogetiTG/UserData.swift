//
//  UserData.swift
//  SogetiTG
//
//  Created by Thijs Govers on 23/03/2022.
//

import SwiftUI
import Foundation



enum Gender: String {
    case male = "man"
    case female = "vrouw"
    case unspecified = "n.v.t"
}

class UserData: ObservableObject  {
//Kind
    @AppStorage ("naamKind") var naamKind = ""
    @AppStorage ("leeftijdKind") var leeftijdKind = ""
    @AppStorage ("adres1") var adres1 = ""
    @AppStorage ("adres2") var adres2 = ""
    @AppStorage ("hobbys") var hobbys = ""
    @AppStorage ("verlanglijstje") var verlanglijstje = ""
    @AppStorage ("topCadeau") var topCadeau = ""
    
    @Published var verjaardag = Date()
    
    @AppStorage ("geslacht") var geslacht = Gender.unspecified
    
//Vrijwilliger
    @AppStorage ("vrijwilligerNaam") var vrijwilligerNaam = ""
    @AppStorage ("vrijwilligerWoonplaats") var vrijwilligerWoonplaats = ""
    
    @AppStorage ("cadeauOpslag") var cadeauOpslag: Bool = true
    @AppStorage ("cadeauInpakken") var cadeauInpakken: Bool = true
    @AppStorage ("cadeauVerjaardag") var cadeauVerjaardag: Bool = true
    @AppStorage ("cadeauSint") var cadeauSint: Bool = true
    @AppStorage ("cadeauKerst") var cadeauKerst: Bool = true
    
//Doneren
    @Published var bedrag = 10.0
    
//Profiel
    
}

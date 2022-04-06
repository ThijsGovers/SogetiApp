//
//  UserData.swift
//  SogetiTG
//
//  Created by Thijs Govers on 23/03/2022.
//

import SwiftUI
import Foundation

struct Profiel : Codable, Identifiable {
    var id = UUID().uuidString
    var naamKind = ""
}

//class ProfielNaam : ObservableObject {
//    let encoder = JSONEncoder()
//    didSet{
//        if let encoded = try?
//            encoder.encode(tasks) {
//            UserDefaults.standard.set(encoded,
//                            forKey: "items")
//        }
//    }
//}

enum Gender: String {
    case male = "man"
    case female = "vrouw"
    case unspecified = "n.v.t"
}

class UserData: ObservableObject  {
//Kind
    @Published var naamKind = ""
    @Published var leeftijdKind = ""
    @Published var adres1 = ""
    @Published var adres2 = ""
    @Published var hobbys = ""
    @Published var verlanglijstje = ""
    @Published var topCadeau = ""
    
    @Published var verjaardag = Date()
    
    @Published var geslacht = Gender.unspecified
    
//Vrijwilliger
    @Published var vrijwilligerNaam = ""
    @Published var vrijwilligerWoonplaats = ""
    
    @Published var cadeauOpslag: Bool = false
    @Published var cadeauInpakken: Bool = true
    @Published var cadeauVerjaardag: Bool = true
    @Published var cadeauSint: Bool = true
    @Published var cadeauKerst: Bool = true
    
//Doneren
    
    
//Profiel
    
}

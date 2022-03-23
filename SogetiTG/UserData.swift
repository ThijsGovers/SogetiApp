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

//class UserData: ObservableObject  {
//    @Published var gender: String {
//        didSet {
//            UserDefaults.standard.set(gender, forKey: "gender")
//        }
//    }
//}

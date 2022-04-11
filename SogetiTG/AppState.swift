//
//  AppState.swift
//  SogetiTG
//
//  Created by Thijs Govers on 11/04/2022.
//

//navview
import Foundation
import Combine

class AppState: ObservableObject {
    @Published var moveToRoot: Bool = false
}

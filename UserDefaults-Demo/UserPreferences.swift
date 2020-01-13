//
//  UserPreferences.swift
//  UserDefaults-Demo
//
//  Created by Matthew Ramos on 1/13/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation

enum UnitMeasurement: String {
    case miles = "Miles"
    case kilometers = "Kilometers"
}

struct UserPreferenceKey {
    static let unitMeasurement = "Unit Measurement"
}
class UserPreference {
    private init() {}
    
    private let standard = UserDefaults.standard
    
    static let shared = UserPreference()
    
    func updateUnitMeasurement(with unit: UnitMeasurement) {
        standard.set(unit.rawValue, forKey: UserPreferenceKey.unitMeasurement)
        
    }
    
    func getUnitMeasurement() -> UnitMeasurement? {
        
    }
    
}

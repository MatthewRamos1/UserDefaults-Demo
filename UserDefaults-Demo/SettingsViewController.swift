//
//  SettingsViewController.swift
//  UserDefaults-Demo
//
//  Created by Matthew Ramos on 1/13/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {

    @IBOutlet weak var unitMeasurementLabel: UILabel!
 
    var currentUnit = UnitMeasurement.miles {
        didSet {
            unitMeasurementLabel.text = currentUnit.rawValue
            UserPreference.shared.updateUnitMeasurement(with: currentUnit)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    private func updateUI() {
        if let unitMeasurement = UserPreference.shared.getUnitMeasurement() {
            currentUnit = unitMeasurement
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //toggle between "Miles" or "Kilometers"
        
        switch indexPath.row {
        case 0:
            toggleUnitMeasurement()
        default:
            break
        }
    }
    private func toggleUnitMeasurement() {
        currentUnit = currentUnit == UnitMeasurement.miles ? UnitMeasurement.kilometers: UnitMeasurement.miles
    }
}

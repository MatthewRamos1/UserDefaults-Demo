//
//  SettingsViewController.swift
//  UserDefaults-Demo
//
//  Created by Matthew Ramos on 1/13/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

enum UnitMeasurement: String {
    case miles = "Miles"
    case kilometers = "Kilometers"
}
class SettingsViewController: UITableViewController {

    @IBOutlet weak var unitMeasurementLabel: UILabel!
 
    var currentUnit = UnitMeasurement.miles {
        didSet {
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //toggle between "Miles" or "Kilometers"
    }
}

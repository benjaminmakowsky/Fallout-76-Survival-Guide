//
//  PlanCell.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 12/17/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//

import Foundation
import UIKit

class PlanCell: UITableViewCell {
    
    
    @IBOutlet weak var PlanLabel: UILabel!
    @IBOutlet weak var FoundLabel: UILabel!
    @IBOutlet weak var LocationLabel: UILabel!
    
    
    func setPlanName(name: String){
        PlanLabel.text = name
    }
    
    func setFoundLabel(status: String){
        FoundLabel.text = status
    }
    
    func setLocation(location: String) {
        LocationLabel.text = location
        if location == "Random"{
            LocationLabel.textColor = .gray
        } else {
            LocationLabel.textColor = .green
        }
    }
}

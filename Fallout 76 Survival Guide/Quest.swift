//
//  Quest.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 12/31/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//

import Foundation

class Quest {
    
    var name = ""
    var rewards: [String] = []
    var steps: [String] = []
    
    init(title: String, parts: [String]) {
        name = title
        rewards.append("None")
        steps.append(contentsOf: parts)
    }
    
    init(title: String, stuff: [String]){
        name = title
        rewards.append(contentsOf: stuff)
    }
}

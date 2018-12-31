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
    
	init(title: String) {
        name = title
        rewards.append("None")
        steps.append("None")
    }

    init(title: String, parts: [String]) {
        name = title
        rewards.append("None")
        steps.append(contentsOf: parts)
    }
    
    init(title: String, parts: [String], stuff: [String]){
        name = title
        rewards.append(contentsOf: stuff)
    }

	func loadQuests() -> [Quest] {
		var questList: [Quest] 

		//----------------Vault 76--------------------------//
		questList.append(Quest(title: "Reclamation Day", steps: ["Discover Overseer's Mission", "Play or Eject Overseer's holotape", "Leave Vault 76"]))
		questlist.append(Quest(title: "First Contact"))

		//--------------Responders-------------------------//
		questlist.append(Quest(title: "Thirst Things First"))
		questlist.append(Quest(title: "Second Helpings"))
		questlist.append(Quest(title: "Final Departure"))
		questlist.append(Quest(title: "An Ounce of Prevention"))
		questlist.append(Quest(title: "Into the Fire"))
		questlist.append(Quest(title: "The Missing Link"))

		//----------------Raiders-------------------------//
		questlist.append(Quest(title: "Signal Strength"))
		questlist.append(Quest(title: "Flavors of Mayhem"))
		questlist.append(Quest(title: "Key to the past"))

		//---------------Free States-----------------------//
		questlist.append(Quest(title: "Early Warnings"))
		questlist.append(Quest(title: "Reassembly Required"))
		questlist.append(Quest(title: "Coming to Fruition"))

		//---------------Brotherhood of Steel-------------//
		questlist.append(Quest(title: "Defiance has Fallen"))
		questlist.append(Quest(title: "Recruitment Blues"))
		questlist.append(Quest(title: "Back to Basic"))
		questlist.append(Quest(title: "Belly of the Beast"))

		//--------------Enclave--------------------------//
		questlist.append(Quest(title: "Uncle Sam"))
		questlist.append(Quest(title: "Bunker Buster"))
		questlist.append(Quest(title: "One of Us"))
		questlist.append(Quest(title: "Officer on Deck"))
		questlist.append(Quest(title: "I am Become Death"))
		
		return questList
	}

}

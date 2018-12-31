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
		questlist.append(Quest(title: "First Contact", steps: ["Track Down the Overseer", "Find the Overseer's Camp", "Find the Overseer in Flatwoods", "Register as a Volunteer"]))

		//--------------Responders-------------------------//
		questlist.append(Quest(title: "Thirst Things First", steps: ["Locate Kesha McDermott", "Search for Kesha along the nearby river", "Retrieve the Water Testing Kit from Kesha McDermott", "Test a sample of water from the river", "Taste a sample of water from Flatwood's Water Pumps", "Analyze the Water Testing Kit's results in Kesha's lab", 	"Boil water using Dirty Water and Wood fuel", "Check in with the Self-Serve Kiosk]))
		questlist.append(Quest(title: "Second Helpings", steps: ["Find Delbert Winters in Flatwoods", "Look for Delbert Winters at his home, "Search for training instructions around Delbert's house.", "Cook a Ribeye Steak", "Check in with the Self-Serve Kiosk", "Contact the Responders using the Database"]))
		questlist.append(Quest(title: "Final Departure", steps: ["Investigate Morgantown Airport", "Learn the fate of the Responders", "Listen to Overseer's Log - Morgantown", "Learn about the Inoculation Project"]))
		questlist.append(Quest(title: "An Ounce of Prevention", steps: ["Study Doctor Hudson's Research	", "Collect a Type-T Fuse", "Collect a blood sample from a Mole Rat", "Collect a blood sample from a Feral Ghoul", "Collect a blood sample from a wolf", "Load blood samples into the centrifuge", "Install the Type-T Fuse", "Use the sympto-matic to administer the vaccine"]))
		
		//TODO: Add side quest objectives
		questlist.append(Quest(title: "Into the Fire", steps: ["Explore the Charleston Fire Department", "Join the Fire Breathers", "Pass the Knowledge Exam", "Complete Physical Exam", "Initiate the final exam site", "Head to the final exam site", "Collect your kit", "Listen to the Fire Breathers Final Exam Briefing holotape", "Activate the emergency beacon", "Return to Bernie", "Register with the Fire Breather's computer system", "Listen to the priority message"]))
		questlist.append(Quest(title: "The Missing Link", steps: ["Follow Madigan's Trail", "Complete Rose's Quests to gain Her Trust", "Retrieve the Uplink", "Go to the Free States Bunker"]))

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

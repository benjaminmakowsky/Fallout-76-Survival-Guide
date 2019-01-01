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

	static func loadQuests() -> [Quest] {
		var questList: [Quest] = []

		//----------------Vault 76--------------------------//
		questList.append(Quest(title: "Reclamation Day", parts: ["Discover Overseer's Mission", "Play or Eject Overseer's holotape", "Leave Vault 76"]))
        questList.append(Quest(title: "First Contact", parts: ["Track Down the Overseer", "Find the Overseer's Camp", "Find the Overseer in Flatwoods", "Register as a Volunteer"]))

		//--------------Responders-------------------------//
        questList.append(Quest(title: "Thirst Things First", parts: ["Locate Kesha McDermott", "Search for Kesha along the nearby river", "Retrieve the Water Testing Kit from Kesha McDermott", "Test a sample of water from the river", "Taste a sample of water from Flatwood's Water Pumps", "Analyze the Water Testing Kit's results in Kesha's lab", "Boil water using Dirty Water and Wood fuel", "Check in with the Self-Serve Kiosk"]))
            
        questList.append(Quest(title: "Second Helpings", parts: ["Find Delbert Winters in Flatwoods", "Look for Delbert Winters at his home", "Search for training instructions around Delbert\'s house.", "Cook a Ribeye Steak", "Check in with the Self-Serve Kiosk", "Contact the Responders using the Database"]))
		questList.append(Quest(title: "Final Departure", parts: ["Investigate Morgantown Airport", "Learn the fate of the Responders", "Listen to Overseer's Log - Morgantown", "Learn about the Inoculation Project"]))
        
		questList.append(Quest(title: "An Ounce of Prevention", parts: ["Study Doctor Hudson's Research", "Collect a Type-T Fuse", "Collect a blood sample from a Mole Rat", "Collect a blood sample from a Feral Ghoul", "Collect a blood sample from a wolf", "Load blood samples into the centrifuge", "Install the Type-T Fuse", "Use the sympto-matic to administer the vaccine"]))
		
		//TODO: Add side quest objectives
		questList.append(Quest(title: "Into the Fire", parts: ["Explore the Charleston Fire Department", "Join the Fire Breathers", "Pass the Knowledge Exam", "Complete Physical Exam", "Initiate the final exam site", "Head to the final exam site", "Collect your kit", "Listen to the Fire Breathers Final Exam Briefing holotape", "Activate the emergency beacon", "Return to Bernie", "Register with the Fire Breather's computer system", "Listen to the priority message"]))
		questList.append(Quest(title: "The Missing Link", parts: ["Follow Madigan's Trail", "Complete Rose's Quests to gain Her Trust", "Retrieve the Uplink", "Go to the Free States Bunker"]))

		//----------------Raiders-------------------------//
		questList.append(Quest(title: "Signal Strength"))
		questList.append(Quest(title: "Flavors of Mayhem"))
		questList.append(Quest(title: "Key to the past"))

		//---------------Free States-----------------------//
		questList.append(Quest(title: "Early Warnings"))
		questList.append(Quest(title: "Reassembly Required"))
		questList.append(Quest(title: "Coming to Fruition"))

		//---------------Brotherhood of Steel-------------//
		questList.append(Quest(title: "Defiance has Fallen"))
		questList.append(Quest(title: "Recruitment Blues"))
		questList.append(Quest(title: "Back to Basic"))
		questList.append(Quest(title: "Belly of the Beast"))

		//--------------Enclave--------------------------//
		questList.append(Quest(title: "Uncle Sam"))
		questList.append(Quest(title: "Bunker Buster"))
		questList.append(Quest(title: "One of Us"))
		questList.append(Quest(title: "Officer on Deck"))
		questList.append(Quest(title: "I am Become Death"))
		
		return questList
	}

}

//
//  Quest.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 12/31/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//

import Foundation
import UIKit

class Quest {
    
    var image: UIImage
    var name = ""
    var rewards: [String] = []
    var steps: [String] = []
    
    init(title: String, pic: String) {
        image = UIImage(named: pic)!
        name = title
        rewards.append("None")
        steps.append("None")
    }

    init(title: String, pic: String, parts: [String]) {
        name = title
        image = UIImage(named: pic)!
        rewards.append("None")
        steps.append(contentsOf: parts)
    }
    
    init(title: String, pic: String, parts: [String], stuff: [String]){
        name = title
        image = UIImage(named: pic)!
        rewards.append(contentsOf: stuff)
    }

	init(title: String, pic: String, stuff: [String]){
        name = title
        image = UIImage(named: pic)!
        rewards.append(contentsOf: stuff)
    }

	static func loadQuests() -> [Quest] {
		var questList: [Quest] = []

		//----------------Vault 76--------------------------//
        questList.append(Quest(title: "Reclamation Day", pic: "Reclamation_Day", parts: ["Discover Overseer's Mission", "Play or Eject Overseer's holotape", "Leave Vault 76"], stuff: ["Ammo", "Aid Item" ]))
        questList.append(Quest(title: "First Contact", pic: "First_Contact", parts: ["Track Down the Overseer", "Find the Overseer's Camp", "Find the Overseer in Flatwoods", "Register as a Volunteer"], stuff: ["Hatchet", "Paramedic Jumpsuit"]))

		//--------------Responders-------------------------//
        questList.append(Quest(title: "Thirst Things First", pic: "Responders_quest", parts: ["Locate Kesha McDermott", "Search for Kesha along the nearby river", "Retrieve the Water Testing Kit from Kesha McDermott", "Test a sample of water from the river", "Taste a sample of water from Flatwood's Water Pumps", "Analyze the Water Testing Kit's results in Kesha's lab", "Boil water using Dirty Water and Wood fuel", "Check in with the Self-Serve Kiosk"], stuff: ["Chemistry Workbench Plan", "Armor"]))
            
        questList.append(Quest(title: "Second Helpings", pic: "Responders_quest", parts: ["Find Delbert Winters in Flatwoods", "Look for Delbert Winters at his home", "Search for training instructions around Delbert\'s house.", "Cook a Ribeye Steak", "Check in with the Self-Serve Kiosk", "Contact the Responders using the Database"], stuff: ["Tinker's Workbench", "A Plan"]))
		questList.append(Quest(title: "Final Departure", pic: "Final_Departure", parts: ["Investigate Morgantown Airport", "Learn the fate of the Responders", "Listen to Overseer's Log - Morgantown", "Learn about the Inoculation Project"], stuff: ["Summerset Special", "Patrolman's Sunglasses"]))
        
		questList.append(Quest(title: "An Ounce of Prevention", pic: "RS03_Inoculation", parts: ["Study Doctor Hudson's Research", "Collect a Type-T Fuse", "Collect a blood sample from a Mole Rat", "Collect a blood sample from a Feral Ghoul", "Collect a blood sample from a wolf", "Load blood samples into the centrifuge", "Install the Type-T Fuse", "Use the sympto-matic to administer the vaccine"], stuff: ["Random Legendary Item", "Diluted Rad-X Plan"]))
		
		//TODO: Add side quest objectives
		questList.append(Quest(title: "Into the Fire", pic: "Responders_quest", parts: ["Explore the Charleston Fire Department", "Join the Fire Breathers", "Pass the Knowledge Exam", "Complete Physical Exam", "Initiate the final exam site", "Head to the final exam site", "Collect your kit", "Listen to the Fire Breathers Final Exam Briefing holotape", "Activate the emergency beacon", "Return to Bernie", "Register with the Fire Breather's computer system", "Listen to the priority message"], stuff: ["Anti-Scorched Training Pistol", "Anti-Scorched Mod Plan"]))
		questList.append(Quest(title: "The Missing Link", pic: "The_Missing_Link", parts: ["Follow Madigan's Trail", "Complete Rose's Quests to gain Her Trust", "Retrieve the Uplink", "Go to the Free States Bunker"], stuff: ["Random Item", "Photo Frame"]))

		//----------------Raiders-------------------------//
		questList.append(Quest(title: "Signal Strength", pic: "Signal_Strength", stuff: ["Guitar Sword/Death Tambo Chance", "Random Plan"]))
		questList.append(Quest(title: "Flavors of Mayhem", pic: "Flavors_of_Mayhem", stuff: ["Black Diamond", "Rose's Syringer"]))
		questList.append(Quest(title: "Key to the past", pic: "Key_to_the_Past", stuff: ["Full Raider Power Armor", "Random Weapon Plan"]))

		//---------------Free States-----------------------//
		questList.append(Quest(title: "Early Warnings", pic: "Icon_Fo76_Free_States_quest", stuff: ["Stand Fast","Shadowed Combat Armor Mods"]))
		questList.append(Quest(title: "Reassembly Required", pic: "Icon_Fo76_Free_States_quest", stuff: ["Nuke Mine Recipe","Mirv Frag Grenade Recipe"]))
		questList.append(Quest(title: "Coming to Fruition", pic: "Icon_Fo76_Free_States_quest", stuff: ["Electrical Arc Plans","Flamethrower Trap Plans"]))

		//---------------Brotherhood of Steel-------------//
		questList.append(Quest(title: "Defiance has Fallen", pic: "Icon_Fo76_Brotherhood_quest", stuff: ["Gatling Gun","BOS Underarmor Mod"]))
		questList.append(Quest(title: "Recruitment Blues", pic: "Icon_Fo76_Brotherhood_quest", stuff: ["Ultracite Laser Pistol","BOS Field Scribe Outfit"]))
		questList.append(Quest(title: "Back to Basic", pic: "Icon_Fo76_Brotherhood_quest", stuff: ["Ammo","Aid Item"]))
		questList.append(Quest(title: "Belly of the Beast", pic: "Icon_Fo76_Brotherhood_quest", stuff: ["Ultracite Power Armor","Weapon Plan"]))

		//--------------Enclave--------------------------//
		questList.append(Quest(title: "Uncle Sam", pic: "Icon_Fo76_Enclave_quest", stuff: ["",""]))
		questList.append(Quest(title: "Bunker Buster", pic: "Bunker_Buster", stuff: ["",""]))
		questList.append(Quest(title: "One of Us", pic: "One_of_Us", stuff: ["",""]))
		questList.append(Quest(title: "Officer on Deck", pic: "Icon_Fo76_Enclave_quest", stuff: ["",""]))
		questList.append(Quest(title: "I am Become Death", pic: "I_Am_Become_Death", stuff: ["",""]))
		
		return questList
	}

}

//
//  Plan.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 12/15/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//

import Foundation
import UIKit

class Plan {
    var planName = ""
    var planLocation = ""
    var planType = ""
    var image: UIImage
    
    init(name: String, location: String, type: String) {
        planName = name
        planLocation = location
        planType = type
        self.image = UIImage(named: "StandBy")!
    }
    
    init(name: String, type: String) {
        planName = name
        planType = type
        planLocation = "Random"
        self.image = UIImage(named: "StandBy")!
    }
    
    static func loadBuildingPlans() -> [Plan]{
        var buildingPlans: [Plan] = []
        
        
        //0-9
        buildingPlans.append(Plan(name: ".44", type: "weapon"))
        
        //A
        buildingPlans.append(Plan(name: "Acoustic Instrument", type: "camp"))
        buildingPlans.append(Plan(name: "Antique Wooden Chairs", location: "Flatwoods Vendor", type: "camp"))
        buildingPlans.append(Plan(name: "Antique Tables", type: "camp"))
        buildingPlans.append(Plan(name: "Advanced Power Connectors", type: "camp"))
        buildingPlans.append(Plan(name: "Artillery", location: "Watoga Shopping District", type: "camp"))
        buildingPlans.append(Plan(name: "Assault Rifle Fierce Receiver", location: "Watoga Station", type: "weapon mod"))
        buildingPlans.append(Plan(name: "Assault Rifle Short NV Scope", type: "weapon mod"))
        buildingPlans.append(Plan(name: "Authentic Bear Skin Rug", type: "camp"))
        buildingPlans.append(Plan(name: "Assorted Lights", location: "Harpers Ferry", type: "camp"))
        
        //B
        buildingPlans.append(Plan(name: "Barn Building Set", location: "Morgantown Airport", type: "camp"))
        buildingPlans.append(Plan(name: "Backyard Grill", type: "camp"))
        buildingPlans.append(Plan(name: "Baseball Player Statue", location: "Pleasant Valley Ski Resort", type: "camp"))
        buildingPlans.append(Plan(name: "Basketball Hoop", type: "camp"))
        buildingPlans.append(Plan(name: "Basketball Hoop 2", type: "camp"))
        buildingPlans.append(Plan(name: "Bear Proof Trashcan", type: "camp"))
        buildingPlans.append(Plan(name: "Bookcase", location: "New River Gorge Bridge", type: "camp"))
        buildingPlans.append(Plan(name: "Bowie Knife", location: "R&G Station", type: "weapon"))
        buildingPlans.append(Plan(name: "Brahmin Pen", location: "Watoga Station\nHaper's Ferry", type: "camp"))
        buildingPlans.append(Plan(name: "Brick Building Set", location: "Watoga Station\nHaper's Ferry", type: "camp"))
        buildingPlans.append(Plan(name: "Bunk Bed", type: "camp"))
        buildingPlans.append(Plan(name: "Bureau", type: "camp"))
        
        
        //C
        buildingPlans.append(Plan(name: "Chemistry Workbench", location: "Thirst Things First - Question \n MorgantownAirport \n Arktos Pharma: 2nd Floor", type: "camp"))
        buildingPlans.append(Plan(name: "Chinese Officer's Sword Electrified Blade", location: "Dropped by Liberators", type: "weapon mod"))
        buildingPlans.append(Plan(name: "Cigarette Machine", type: "camp"))
        buildingPlans.append(Plan(name: "Combat Rifle", location: "Reward for Completing Motherlode", type: "weapon"))
        buildingPlans.append(Plan(name: "Combat Rifle Snappy Receiver", location: "Watoga Station", type: "weapon mod"))
        buildingPlans.append(Plan(name: "Combat Rifle Long NV Scope", location: "Harper's Ferry", type: "weapon mod"))
        buildingPlans.append(Plan(name: "Communism Poster", type: "camp"))
        buildingPlans.append(Plan(name: "Cooler", type: "camp"))
        buildingPlans.append(Plan(name: "Cooking Stove", type: "camp"))
        
        //D
        buildingPlans.append(Plan(name: "Daisy Rug", type: "camp"))
        buildingPlans.append(Plan(name: "Display Cases", type: "camp"))
        buildingPlans.append(Plan(name: "Dome Sculpture", type: "camp"))
        buildingPlans.append(Plan(name: "Dumpster", type: "camp"))
        
        //E
        buildingPlans.append(Plan(name: "Eat-O-Tronic", location: "Watoga Shopping District", type: "camp"))
        buildingPlans.append(Plan(name: "Electric Chair", location: "Pleasant Valley Ski Resort", type: "camp"))
        buildingPlans.append(Plan(name: "Elegant Couches", type: "camp"))
        buildingPlans.append(Plan(name: "Elegant Light Set", type: "camp"))
        buildingPlans.append(Plan(name: "Elegant Tables", type: "camp"))
        buildingPlans.append(Plan(name: "Elegant Wall Clock", type: "camp"))
        
        //F
        buildingPlans.append(Plan(name: "Fancy Bed", type: "camp"))
        buildingPlans.append(Plan(name: "Floor Safe", type: "camp"))
        buildingPlans.append(Plan(name: "Footlocker", type: "camp"))
        buildingPlans.append(Plan(name: "Fusion Generator", location: "Random Reward for Powerplant Event", type: "camp"))
        
        //G
        buildingPlans.append(Plan(name: "Garage Doors", type: "camp"))
        buildingPlans.append(Plan(name: "Garden Bench", type: "camp"))
        buildingPlans.append(Plan(name: "Gattling Gun", location: "Watoga Shopping District", type: "weapon"))
        buildingPlans.append(Plan(name: "Gilded Wall Clock", type: "camp"))
        
        //H
        buildingPlans.append(Plan(name: "Handmade Rifle", location: "Haper's Ferry and Watoga or completing Prison Event", type: "weapon"))
        buildingPlans.append(Plan(name: "High-Tech Table", type: "camp"))
        buildingPlans.append(Plan(name: "Hospital Bed", type: "camp"))
        
        //J
        buildingPlans.append(Plan(name: "Jukebox", type: "camp"))
        
        //L
        buildingPlans.append(Plan(name: "Large Tent", location: "Morgantown Airport protectron", type: "camp"))
        buildingPlans.append(Plan(name: "Large Tool Box", type: "camp"))
        buildingPlans.append(Plan(name: "Large Water Purifier", location: "Camp McClintock - Overseer's Stash", type: "camp"))
        buildingPlans.append(Plan(name: "Lever Gun", location: "Grafton Station", type: "weapon"))
        buildingPlans.append(Plan(name: "Lever Gun NV Scope", location: "Watoga Station", type: "weapon mod"))
        buildingPlans.append(Plan(name: "Lion Statues", type: "camp"))
        buildingPlans.append(Plan(name: "Long Pew", type: "camp"))
        buildingPlans.append(Plan(name: "Long Rustic Bench", type: "camp"))
        buildingPlans.append(Plan(name: "Lounge Chairs", type: "camp"))
        
        //M
        buildingPlans.append(Plan(name: "Mattress", type: "camp"))
        buildingPlans.append(Plan(name: "Metal Bench", type: "camp"))
        buildingPlans.append(Plan(name: "Metal Box", type: "camp"))
        buildingPlans.append(Plan(name: "Metal Stool", type: "camp"))
        buildingPlans.append(Plan(name: "Metal Tables", type: "camp"))
        buildingPlans.append(Plan(name: "Missle Launcher Triple Barrel", location: "Watoga Station", type: "weapon mod"))
        buildingPlans.append(Plan(name: "Military Cot", location: "Cabins in Horizon's Crest", type: "camp"))
        buildingPlans.append(Plan(name: "Modern Bed", type: "camp"))
        buildingPlans.append(Plan(name: "Modern Paintings", type: "camp"))
        
        //N
        buildingPlans.append(Plan(name: "News Stand", type: "camp"))
        buildingPlans.append(Plan(name: "Nuka-Cola Machine", type: "camp"))
        
        //O
        buildingPlans.append(Plan(name: "Office Chairs", type: "camp"))
        buildingPlans.append(Plan(name: "Office Couches", type: "camp"))
        
        //P
        buildingPlans.append(Plan(name: "Park Grill", type: "camp"))
        buildingPlans.append(Plan(name: "Pianos", type: "camp"))
        buildingPlans.append(Plan(name: "Pool Table", location: "Morgantown Station - Wooden Crate", type: "camp"))
        buildingPlans.append(Plan(name: "Porta-Potty", type: "camp"))
        buildingPlans.append(Plan(name: "Potted Plant", type: "camp"))
        buildingPlans.append(Plan(name: "Power Armor Station", location: "Enclave Production\nMiner Miracles quest", type: "camp"))
        buildingPlans.append(Plan(name: "Power Fist", location: "Reward for completeing quest: One of Us", type: "weapon"))
        
        //R
        buildingPlans.append(Plan(name: "Resort Bench", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Chairs", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Cloth Chairs", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Couches", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Mirrors", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Paintings", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Planters", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Sign", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Tables", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Trashcan", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Vases", type: "camp"))
        buildingPlans.append(Plan(name: "Resort Tables", type: "camp"))
        
        //S
        buildingPlans.append(Plan(name: "Safety Posters", type: "camp"))
        buildingPlans.append(Plan(name: "Scarecrows", type: "camp"))
        buildingPlans.append(Plan(name: "Short Bench", type: "camp"))
        buildingPlans.append(Plan(name: "Sickle", type: "weapon"))
        buildingPlans.append(Plan(name: "Simple Long Bench", type: "camp"))
        buildingPlans.append(Plan(name: "Single Action Revolver Ivory Grip", type: "weapon mod")) //---weapon
        buildingPlans.append(Plan(name: "Single Display Shelf", type: "camp"))
        buildingPlans.append(Plan(name: "Siren", type: "camp"))
        buildingPlans.append(Plan(name: "Small Tent", location: "Morgantown Airport Protectron", type: "camp"))
        buildingPlans.append(Plan(name: "Spinning Rack", type: "camp"))
        buildingPlans.append(Plan(name: "Stone Fountain", type: "camp"))
        buildingPlans.append(Plan(name: "Stone Foundation", type: "camp"))
        buildingPlans.append(Plan(name: "Street Lights", type: "camp"))
        
        //T
        buildingPlans.append(Plan(name: "Table Television", type: "camp"))
        buildingPlans.append(Plan(name: "Terminal", type: "camp"))
        //buildingPlans.append(Plan(name: "Tent", type: "camp"))
        buildingPlans.append(Plan(name: "Tinker's Workbench", location: "Arktos Pharma and Overseer's House in Sutton", type: "camp"))
        buildingPlans.append(Plan(name: "Track Lighting", location: "Pleasant Valley Ski Resort", type: "camp"))
        
        //U
        //buildingPlans.append(Plan(name: "U.S. Flag", type: "camp"))
        buildingPlans.append(Plan(name: "Unstoppables Poster", type: "camp"))
        
        //V
        buildingPlans.append(Plan(name: "Vault-Boy", type: "camp"))
        buildingPlans.append(Plan(name: "Vault-Girl", type: "camp"))
        buildingPlans.append(Plan(name: "Vault-Tec Cardboard Standees", type: "camp"))
        buildingPlans.append(Plan(name: "Vault-Tec Bed", type: "camp"))
        buildingPlans.append(Plan(name: "Vault-Tec Bed 2", type: "camp"))
        buildingPlans.append(Plan(name: "Vault 76 Jumpsuit", location: "The Giant Teapot\nWixon Homestead\nCharleston Fire Department\nMorganttown Airport", type: "camp"))
        buildingPlans.append(Plan(name: "VTU Statue", type: "camp"))
        
        //W
        buildingPlans.append(Plan(name: "Water Pump", type: "camp"))
        buildingPlans.append(Plan(name: "Water Purifier", location: "Charleston Capital Building", type: "camp"))
        buildingPlans.append(Plan(name: "Welcome Mats", type: "camp"))
        buildingPlans.append(Plan(name: "Wind Instruments", type: "camp"))
        buildingPlans.append(Plan(name: "Windmill", location: "Random Reward for a Power Plant Event", type: "camp"))
        buildingPlans.append(Plan(name: "Wooden Barn Doors", type: "camp"))
        buildingPlans.append(Plan(name: "Wooden Desk", location: "First House Left of Green Country Lodge", type: "camp"))
        buildingPlans.append(Plan(name: "Wooden Rocking Chairs", type: "camp"))
        buildingPlans.append(Plan(name: "Wooden Spinning Wheel", type: "camp"))
        buildingPlans.append(Plan(name: "Wood Stove", type: "camp"))
        
        return buildingPlans
    }
    
    
}

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
    var image: UIImage
    
    init(name: String, location: String) {
        planName = name
        planLocation = location
        self.image = UIImage(named: "StandBy")!
    }
    
    init(name: String) {
        planName = name
        planLocation = "Random"
        self.image = UIImage(named: "StandBy")!
    }
    
    static func loadBuildingPlans() -> [Plan]{
        var buildingPlans: [Plan] = []
        
        //A
        buildingPlans.append(Plan(name: "Acoustic Instrument"))
        buildingPlans.append(Plan(name: "Antique Wooden Chairs", location: "Flatwoods Vendor"))
        buildingPlans.append(Plan(name: "Antique Tables"))
        buildingPlans.append(Plan(name: "Advanced Power Connectors"))
        buildingPlans.append(Plan(name: "Artillery", location: "Watoga Shopping District"))
        buildingPlans.append(Plan(name: "Authentic Bear Skin Rug"))
        buildingPlans.append(Plan(name: "Assorted Lights", location: "Harpers Ferry"))
        
        //B
        buildingPlans.append(Plan(name: "Barn Building Set", location: "Morgantown Airport"))
        buildingPlans.append(Plan(name: "Backyard Grill"))
        buildingPlans.append(Plan(name: "Baseball Player Statue", location: "Pleasant Valley Ski Resort"))
        buildingPlans.append(Plan(name: "Basketball Hoop"))
        buildingPlans.append(Plan(name: "Basketball Hoop 2"))
        buildingPlans.append(Plan(name: "Bear Proof Trashcan"))
        buildingPlans.append(Plan(name: "Bookcase", location: "New River Gorge Bridge"))
        buildingPlans.append(Plan(name: "Brahmin Pen", location: "Watoga Station\nHaper's Ferry"))
        buildingPlans.append(Plan(name: "Brick Building Set", location: "Watoga Station\nHaper's Ferry"))
        buildingPlans.append(Plan(name: "Bunk Bed"))
        buildingPlans.append(Plan(name: "Bureau"))
        
        
        //C
        buildingPlans.append(Plan(name: "Chemistry Workbench", location: "Thirst Things First - Question \n MorgantownAirport \n Arktos Pharma: 2nd Floor"))
        buildingPlans.append(Plan(name: "Cigarette Machine"))
        buildingPlans.append(Plan(name: "Communism Poster"))
        buildingPlans.append(Plan(name: "Cooler"))
        buildingPlans.append(Plan(name: "Cooking Stove"))
        
        //D
        buildingPlans.append(Plan(name: "Daisy Rug"))
        buildingPlans.append(Plan(name: "Display Cases"))
        buildingPlans.append(Plan(name: "Dome Sculpture"))
        buildingPlans.append(Plan(name: "Dumpster"))
        
        //E
        buildingPlans.append(Plan(name: "Eat-O-Tronic", location: "Watoga Shopping District"))
        buildingPlans.append(Plan(name: "Electric Chair", location: "Pleasant Valley Ski Resort"))
        buildingPlans.append(Plan(name: "Elegant Couches"))
        buildingPlans.append(Plan(name: "Elegant Light Set"))
        buildingPlans.append(Plan(name: "Elegant Tables"))
        buildingPlans.append(Plan(name: "Elegant Wall Clock"))
        
        //F
        buildingPlans.append(Plan(name: "Fancy Bed"))
        buildingPlans.append(Plan(name: "Floor Safe"))
        buildingPlans.append(Plan(name: "Footlocker"))
        buildingPlans.append(Plan(name: "Fusion Generator", location: "Random Reward for Powerplant Event"))
        
        //G
        buildingPlans.append(Plan(name: "Garage Doors"))
        buildingPlans.append(Plan(name: "Garden Bench"))
        buildingPlans.append(Plan(name: "Gilded Wall Clock"))
        
        //H
        buildingPlans.append(Plan(name: "High-Tech Table"))
        buildingPlans.append(Plan(name: "Hospital Bed"))
        
        //J
        buildingPlans.append(Plan(name: "Jukebox"))
        
        //L
        buildingPlans.append(Plan(name: "Large Tent", location: "Morgantown Airport protectron"))
        buildingPlans.append(Plan(name: "Large Tool Box"))
        buildingPlans.append(Plan(name: "Large Water Purifier", location: "Camp McClintock - Overseer's Stash"))
        buildingPlans.append(Plan(name: "Lion Statues"))
        buildingPlans.append(Plan(name: "Long Pew"))
        buildingPlans.append(Plan(name: "Long Rustic Bench"))
        buildingPlans.append(Plan(name: "Lounge Chairs"))
        
        //M
        buildingPlans.append(Plan(name: "Mattress"))
        buildingPlans.append(Plan(name: "Metal Bench"))
        buildingPlans.append(Plan(name: "Metal Box"))
        buildingPlans.append(Plan(name: "Metal Stool"))
        buildingPlans.append(Plan(name: "Metal Tables"))
        buildingPlans.append(Plan(name: "Military Cot", location: "Cabins in Horizon's Crest"))
        buildingPlans.append(Plan(name: "Modern Bed"))
        buildingPlans.append(Plan(name: "Modern Paintings"))
        
        //N
        buildingPlans.append(Plan(name: "News Stand"))
        buildingPlans.append(Plan(name: "Nuka-Cola Machine"))
        
        //O
        buildingPlans.append(Plan(name: "Office Chairs"))
        buildingPlans.append(Plan(name: "Office Couches"))
        
        //P
        buildingPlans.append(Plan(name: "Park Grill"))
        buildingPlans.append(Plan(name: "Pianos"))
        buildingPlans.append(Plan(name: "Pool Table", location: "Morgantown Station - Wooden Crate"))
        buildingPlans.append(Plan(name: "Porta-Potty"))
        buildingPlans.append(Plan(name: "Potted Plant"))
        buildingPlans.append(Plan(name: "Power Armor Station", location: "Enclave Production\nMiner Miracles quest"))
        
        //R
        buildingPlans.append(Plan(name: "Resort Bench"))
        buildingPlans.append(Plan(name: "Resort Chairs"))
        buildingPlans.append(Plan(name: "Resort Cloth Chairs"))
        buildingPlans.append(Plan(name: "Resort Couches"))
        buildingPlans.append(Plan(name: "Resort Mirrors"))
        buildingPlans.append(Plan(name: "Resort Paintings"))
        buildingPlans.append(Plan(name: "Resort Planters"))
        buildingPlans.append(Plan(name: "Resort Sign"))
        buildingPlans.append(Plan(name: "Resort Tables"))
        buildingPlans.append(Plan(name: "Resort Trashcan"))
        buildingPlans.append(Plan(name: "Resort Vases"))
        buildingPlans.append(Plan(name: "Resort Tables"))
        
        //S
        buildingPlans.append(Plan(name: "Safety Posters"))
        buildingPlans.append(Plan(name: "Scarecrows"))
        buildingPlans.append(Plan(name: "Short Bench"))
        buildingPlans.append(Plan(name: "Simple Long Bench"))
        buildingPlans.append(Plan(name: "Single Display Shelf"))
        buildingPlans.append(Plan(name: "Siren"))
        buildingPlans.append(Plan(name: "Small Tent", location: "Morgantown Airport Protectron"))
        buildingPlans.append(Plan(name: "Spinning Rack"))
        buildingPlans.append(Plan(name: "Stone Fountain"))
        buildingPlans.append(Plan(name: "Stone Foundation"))
        buildingPlans.append(Plan(name: "Street Lights"))
        
        //T
        buildingPlans.append(Plan(name: "Table Television"))
        buildingPlans.append(Plan(name: "Terminal"))
        //buildingPlans.append(Plan(name: "Tent"))
        buildingPlans.append(Plan(name: "Tinker's Workbench", location: "Arktos Pharma and Overseer's House in Sutton"))
        buildingPlans.append(Plan(name: "Track Lighting", location: "Pleasant Valley Ski Resort"))
        
        //U
        //buildingPlans.append(Plan(name: "U.S. Flag"))
        buildingPlans.append(Plan(name: "Unstoppables Poster"))
        
        //V
        buildingPlans.append(Plan(name: "Vault-Boy"))
        buildingPlans.append(Plan(name: "Vault-Girl"))
        buildingPlans.append(Plan(name: "Vault-Tec Cardboard Standees"))
        buildingPlans.append(Plan(name: "Vault-Tec Bed"))
        buildingPlans.append(Plan(name: "Vault-Tec Bed 2"))
        buildingPlans.append(Plan(name: "Vault 76 Jumpsuit", location: "The Giant Teapot\nWixon Homestead\nCharleston Fire Department\nMorganttown Airport"))
        buildingPlans.append(Plan(name: "VTU Statue"))
        
        //W
        buildingPlans.append(Plan(name: "Water Pump"))
        buildingPlans.append(Plan(name: "Water Purifier", location: "Charleston Capital Building"))
        buildingPlans.append(Plan(name: "Welcome Mats"))
        buildingPlans.append(Plan(name: "Wind Instruments"))
        buildingPlans.append(Plan(name: "Windmill", location: "Random Reward for a Power Plant Event"))
        buildingPlans.append(Plan(name: "Wooden Barn Doors"))
        buildingPlans.append(Plan(name: "Wooden Desk", location: "First House Left of Green Country Lodge"))
        buildingPlans.append(Plan(name: "Wooden Rocking Chairs"))
        buildingPlans.append(Plan(name: "Wooden Spinning Wheel"))
        buildingPlans.append(Plan(name: "Wood Stove"))
        
        return buildingPlans
    }
    
    //static func loadWeaponPlans() {
        
    //}
}

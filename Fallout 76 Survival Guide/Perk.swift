    //
    //  Data.swift
    //  Fallout 76 Survival Guide
    //
    //  Created by Nicole Makowsky on 11/14/18.
    //  Copyright © 2018 Nicole Makowsky. All rights reserved.
    //

import Foundation
import UIKit

class Perk {
    var title = ""
    var levelAttainable : Int
    var descriptions: [String] = []
    var image: UIImage


    init(title: String, levelAttainable: String, descriptions: [String] ){
        self.title = title
        self.levelAttainable = Int(levelAttainable)!
        self.descriptions = descriptions
        self.image = UIImage(named: "StandBy")!
    }
    
    init(pic: UIImage, title: String, levelAttainable: String, descriptions: [String]) {
        self.title = title
        self.levelAttainable = Int(levelAttainable)!
        self.descriptions = descriptions
        self.image = pic
    }

    
    static func createStrength() -> [Perk]{
        
        var StrengthPerks: [Perk] = []
        
        StrengthPerks.append(Perk(pic: UIImage(named: "FO76_Bandolier_Perk")!, title: "Bandolier", levelAttainable: "22", descriptions: ["Ballistic weapon ammo weighs 45% less.", "Ballistic weapon ammo weighs 90% less." ]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Fo76_Barbarian")!, title: "Barbarian", levelAttainable: "14", descriptions: ["Every point of Strength adds +2 Damage Resist (Max 40). (No Power Armor)", "Every point of Strength adds +3 Damage Resist (Max 60). (No Power Armor)", "Every point of Strength adds +4 Damage Resist (Max 80). (No Power Armor)" ]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Fo76_Basher")!, title: "Basher", levelAttainable: "11", descriptions: ["Gun bashing does +25% damage with a 5% chance to cripple your opponent", "Gun bashing does +50% damage with a 10% chance to cripple your opponent" ]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Bear_Arms_perk")!, title: "Bear Arms", levelAttainable: "35", descriptions: ["Heavy Guns weigh 20% less.", "Heavy Guns weigh 40% less.", "Heavy Guns weigh 60% less.", "Heavy Guns weigh 80% less."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Fo76_Blocker")!, title: "Blocker", levelAttainable: "21", descriptions: ["Blocker Take 15% less damage from your opponents' melee attacks.", "Blocker Take 30% less damage from your opponents' melee attacks.", "Blocker Take 45% less damage from your opponents' melee attacks." ]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Bullet_Shield_copy")!, title: "Bullet Shield", levelAttainable: "39", descriptions: ["Gain 10 damage resistance while firing a heavy gun.", "Gain 20 damage resistance while firing a heavy gun.", "Gain 30 damage resistance while firing a heavy gun.", "Gain 40 damage resistance while firing a heavy gun." ]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Expert_Gladiator")!, title: "Expert Gladiator", levelAttainable: "20", descriptions: ["Your one-handed melee weapons now do +10% damage.", "Your one-handed melee weapons now do +15% damage.", "Your one-handed melee weapons now do +20% damage." ]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "FO76_Expert_Heavy_Gunner_Perk")!, title: "Expert Heavy Gunner", levelAttainable: "40", descriptions: ["Your non-explosive heavy guns now do +10% damage.", "Your non-explosive heavy guns now do +15% damage.", "Your non-explosive heavy guns now do +20% damage." ]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Expert_Shotgunner")!, title: "Expert Shotgunner", levelAttainable: "23", descriptions: ["Your shotguns now do +10% damage.", "Your shotguns now do +15% damage.", "Your shotguns now do +20% damage." ]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Expert_Slugger_perk")!, title: "Expert Slugger", levelAttainable: "24", descriptions: ["Your two-handed melee weapons now do +10% damage.", "Your two-handed melee weapons now do +15% damage.", "Your two-handed melee weapons now do +20% damage."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Full_Charge")!, title: "Full Charge", levelAttainable: "33", descriptions: ["Sprinting in Power Armor consumes half as much Fusion Core energy.", "Sprinting in Power Armor consumes no extra Fusion Core energy."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Gladiator_perk")!, title: "Gladiator", levelAttainable: "2", descriptions: ["Your one-handed melee weapons now do +10% damage.", "Your one-handed melee weapons now do +15% damage.", "Your one-handed melee weapons now do +20% damage."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Fo76_Heavy_Gunner")!, title: "Heavy Gunner", levelAttainable: "30", descriptions: ["Your non-explosive heavy guns now do +10% damage.", "Your non-explosive heavy guns now do +15% damage.", "Your non-explosive heavy guns now do +20% damage."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Incisor")!, title: "Incisor", levelAttainable: "34", descriptions: ["Your melee attacks ignore 20% of your target's armor.", "Your melee attacks ignore 25% of your target's armor.", "Your melee attacks ignore 30% of your target's armor."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Fo76_Iron_Fist")!, title: "Iron Fist", levelAttainable: "5", descriptions: ["Your punching attacks now do +10% damage.", "Your punching attacks now do +15% damage.", "Your punching attacks now do +20% damage."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Lock_and_Load")!, title: "Lock and Load", levelAttainable: "37", descriptions: ["Heavy guns reload +10% faster.", "Heavy guns reload +20% faster.", "Heavy guns reload +30% faster."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Martial_Artist")!, title: "Martial Artist", levelAttainable: "16", descriptions: ["Your melee weapons weigh 20% less, and you can swing them 10% faster.", "Your melee weapons weigh 40% less, and you can swing them 20% faster.", "Your melee weapons weigh 60% less, and you can swing them 30% faster."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Master_Gladiator")!, title: "Master Gladiator", levelAttainable: "43", descriptions: ["Your one-handed melee weapons now do +10% damage.", "Your one-handed melee weapons now do +15% damage.", "Your one-handed melee weapons now do +20% damage."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Master_Heavy_Gunner")!, title: "Master Heavy", levelAttainable: "50", descriptions: ["Your non-explosive heavy guns now do +10% damage.", "Your non-explosive heavy guns now do +15% damage.", "Your non-explosive heavy guns now do +20% damage."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Master_Shotgunner")!, title: "Master Shotgunner", levelAttainable: "45", descriptions: ["Your shotguns now do +10% damage.", "Your shotguns now do +15% damage.", "Your shotguns now do +20% damage."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Master_Slugger")!, title: "Master Slugger", levelAttainable: "48", descriptions: ["Your two-handed melee weapons now do +10% damage.", "Your two-handed melee weapons now do +15% damage.", "Your two-handed melee weapons now do +20% damage."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Ordnance_Express")!, title: "Ordinance Express", levelAttainable: "31", descriptions: ["Explosives weigh 30% less.", "Explosives weigh 60% less.", "Explosives weigh 90% less."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Fo76_Pack_Rat")!, title: "Pack Rat", levelAttainable: "7", descriptions: ["The weight of all junk items is reduced by 25%.", "The weight of all junk items is reduced by 50%.", "The weight of all junk items is reduced by 75%."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Fo76_Pain_Train")!, title: "Pain Train", levelAttainable: "41", descriptions: ["Damage and stagger enemies by sprinting into them with Power Armor.", "Smash and stagger enemies by sprinting into them with Power Armor.", "Devastate and stagger enemies by sprinting into them with Power Armor."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Scattershot")!, title: "Scattershot", levelAttainable: "18", descriptions: ["Shotguns now weigh 30% less and you reload them 10% faster.", "Shotguns now weigh 60% less and you reload them 20% faster.", "Shotguns now weigh 90% less and you reload them 30% faster."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Fo76_Shotgunner")!, title: "Shotgunner", levelAttainable: "10", descriptions: ["Your shotguns now do +10% damage.", "Your shotguns now do +15% damage.", "Your shotguns now do +20% damage."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Fo76_Slugger")!, title: "Slugger ", levelAttainable: "6", descriptions: ["Your two-handed melee weapons now do +10% damage.", "Your two-handed melee weapons now do +15% damage.", "Your two-handed melee weapons now do +20% damage."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Fo76_Strong_Back")!, title: "Strong Back", levelAttainable: "26", descriptions: ["Gain +10 to carry weight.", "Gain +20 to carry weight.", "Gain +30 to carry weight.", "Gain +40 to carry weight."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "Sturdy_Frame_perk")!, title: "Sturdy Frame", levelAttainable: "13", descriptions: ["Armor weighs 25% less than normal.", "Armor weighs 50% less than normal."]))
        
        StrengthPerks.append(Perk(pic: UIImage(named: "FO76_Traveling_Pharmacy")!, title: "Traveling Pharmacy", levelAttainable: "3", descriptions: ["Weights of all Chems (including Stimpaks) are reduced by 30%.", "Weights of all Chems (including Stimpaks) are reduced by 60%.", "Weights of all Chems (including Stimpaks) are reduced by 90%."]))
        
        
        
        return StrengthPerks
    }

    
    static func createPerception() -> [Perk] {
        let perk1 = Perk(pic: UIImage(named: "Fo76_Awareness")!,title: "Awareness", levelAttainable: "27", descriptions: ["You can view a target`s specific damage resistance in V.A.T.S."])

        let perk2 = Perk(pic: UIImage(named: "Butcher's_Bounty")!,title: "Butcher's Bounty", levelAttainable: "3", descriptions: ["40% chance to find an extra meat when you \"Search\" an animal corpse.", "60% chance to find an extra meat when you \"Search\" an animal corpse.", "80% chance to find an extra meat when you \"Search\" an animal corpse."])

        let perk3 = Perk(pic: UIImage(named: "Fo76_Commando")!,title: "Commando", levelAttainable: "15", descriptions: ["Basic combat training means automatic rifles do +10% damage.", "Basic combat training means automatic rifles do +15% damage.", "Basic combat training means automatic rifles do +20% damage."])

        let perk4 = Perk(pic: UIImage(named: "FO76_Concentrated_Fire")!,title: "Concentrated Fire", levelAttainable: "2", descriptions: ["V.A.T.S. now targets limbs. Focus fire to gain accuracy and damage per shot.", "V.A.T.S. targets limbs. Focus fire to gain more accuracy and damage per shot.", "V.A.T.S. targets limbs. Focus fire to gain high accuracy and damage per shot."])

        let perk5 = Perk(pic: UIImage(named: "Fo76_Crack_Shot")!,title: "Crack Shot", levelAttainable: "7", descriptions: ["All pistols now have 10% more range and accuracy when sighted.", "All pistols now have 20% more range and accuracy when sighted.", "All pistols now have 30% more range and accuracy when sighted."])

        let perk6 = Perk(pic: UIImage(named: "Fo76_Expert_Commando")!,title: "Expert Commando", levelAttainable: "25", descriptions: ["Basic combat training means automatic rifles do +10% damage.", "Basic combat training means automatic rifles do +15% damage.", "Basic combat training means automatic rifles do +20% damage."])

        let perk7 = Perk(pic: UIImage(named: "Fo76_Expert_Picklock")!,title: "Expert Picklock", levelAttainable: "19", descriptions: ["Gain +1 lockpicking skill, and the lockpicking 'sweet spot' is 10% larger."])

        let perk8 = Perk(pic: UIImage(named: "Expert_Rifleman")!, title: "Expert Rifleman", levelAttainable: "20", descriptions: ["Your non-automatic rifles now do +10% damage.", "Your non-automatic rifles now do +15% damage.", "Your non-automatic rifles now do +20% damage."])

        let perk9 = Perk(pic: UIImage(named: "Fo76_Exterminator")!,title: "Exterminator", levelAttainable: "14", descriptions: ["Your attacks ignore 25% armor of any insect.", "Your attacks ignore 50% armor of any insect.", "Your attacks ignore 75% armor of any insect."])

        let perk10 = Perk(pic: UIImage(named: "Fire_in_the_Hole")!,title: "Fire in the Hole", levelAttainable: "38", descriptions: ["See a throwing arc when tossing thrown weapons, and they fly 15% further.", "See a throwing arc when tossing thrown weapons, and they fly 30% further.", "See a throwing arc when tossing thrown weapons, and they fly 50% further."])

        let perk11 = Perk(pic: UIImage(named: "Fo76_Fortune_Finder")!,title: "Fortune Finder", levelAttainable: "22", descriptions: ["You hear directional audio when in range of a Caps Stash."])

        let perk12 = Perk(pic: UIImage(named: "Fo76_Glow_Sight")!,title: "Glow Sight", levelAttainable: "33", descriptions: ["Deal +20% damage to glowing enemies.", "Deal +40% damage to glowing enemies.", "Deal +60% damage to glowing enemies."])

        let perk13 = Perk(pic: UIImage(named: "Green_Thumb_perk")!,title: "Green Thumb", levelAttainable: "4", descriptions: ["Reap twice as much when harvesting flora."])

        let perk14 = Perk(pic: UIImage(named: "Fo76_Grenadier")!,title: "Grenadier", levelAttainable: "35", descriptions: ["Your explosives detonate with a 50% larger radius.", "Your explosives detonate with twice the radius."])

        let perk15 = Perk(pic: UIImage(named: "Ground_Pounder")!,title: "Ground Pounder", levelAttainable: "18", descriptions: ["Automatic rifles now reload 10% faster and have better hip fire accuracy.", "Automatic rifles now reload 20% faster and have even better hip fire accuracy.", "Automatic rifles now reload 30% faster and have excellent hip fire accuracy."])

        let perk16 = Perk(pic: UIImage(named: "Long_Shot")!,title: "Long Shot", levelAttainable: "37", descriptions: ["Your rifles have 10% more range and more accuracy when sighted.", "Your rifles have 20% more range and even more accuracy when sighted.", "Your rifles have 30% more range and excellent accuracy when sighted."])

        let perk17 = Perk(pic: UIImage(named: "Master_Commando")!,title: "Master Commando", levelAttainable: "45", descriptions: ["Basic combat training means automatic rifles do +10% damage.", "Basic combat training means automatic rifles do +15% damage.", "Basic combat training means automatic rifles do +20% damage."])

        let perk18 = Perk(pic: UIImage(named: "Master_Picklock")!,title: "Master Picklock", levelAttainable: "40", descriptions: ["Gain +1 lockpicking skill, and the lockpicking 'sweet spot' is 10% larger."])

        let perk19 = Perk(pic: UIImage(named: "Master_Rifleman")!,title: "Master Rifleman", levelAttainable: "42", descriptions: ["Your non-automatic rifles now do +10% damage.", "Your non-automatic rifles now do +15% damage.", "Your non-automatic rifles now do +20% damage."])

        let perk20 = Perk(pic: UIImage(named: "Night_Eyes")!,title: "Night Eyes", levelAttainable: "50", descriptions: ["Gain Night Vision while sneaking between 6:00 p.m. and 6:00 a.m."])

        let perk21 = Perk(pic: UIImage(named: "Fo76_Night_Person")!,title: "Night Person", levelAttainable: "24", descriptions: ["Gain +1 Intelligence and +1 Perception between the hours of 6:00 p.m. and 6:00 a.m.", "Gain +2 Intelligence and +2 Perception between the hours of 6:00 p.m. and 6:00 a.m.", "Gain +3 Intelligence and +3 Perception between the hours of 6:00 p.m. and 6:00 a.m."])

        let perk22 = Perk(pic: UIImage(named: "Pannapictagraphist")!,title: "Pannapictagraphist", levelAttainable: "12", descriptions: ["You hear directional audio when in range of a Magazine"])

        let perk23 = Perk(pic: UIImage(named: "Percepti-Bobble_perk")!,title: "Percepti-bobble", levelAttainable: "16", descriptions: ["You hear directional audio when in range of a Bobblehead"])

        let perk24 = Perk(pic: UIImage(named: "FO76_Picklock")!,title: "Picklock", levelAttainable: "5", descriptions: ["Gain +1 lockpicking skill, and the lockpicking 'sweet spot' is 10% larger."])

        let perk25 = Perk(pic: UIImage(named: "Fo76_Refractor")!,title: "Refractor", levelAttainable: "32", descriptions: ["Gain +5 Energy Resistance", "Gain +10 Energy Resistance", "Gain +15 Energy Resistance", "Gain +20 Energy Resistance"])

        let perk26 = Perk(pic: UIImage(named: "Fo76_Rifleman")!,title: "Rifleman", levelAttainable: "8", descriptions: ["Your non-automatic rifles now do +10% damage.", "Your non-automatic rifles now do +15% damage.", "Your non-automatic rifles now do +20% damage."])

        let perk27 = Perk(pic: UIImage(named: "Skeet_Shooter")!,title: "Skeet Shooter", levelAttainable: "10", descriptions: ["Your shotguns have improved accuracy and spread", "Your shotguns have even better accuracy and spread", "Your shotguns have excellent accuracy and spread"])

        let perk28 = Perk(pic: UIImage(named: "Fo76_Sniper")!,title: "Sniper", levelAttainable: "28", descriptions: ["Gain improved control and hold your breath 25% longer while aiming scopes. Improved focus and better sighted accuracy.", "Gain improved control and hold your breath 50% longer while aiming scopes.", "Gain improved control and hold your breath 75% longer while aiming scopes."])

        let perk29 = Perk(pic: UIImage(named: "Tank_Killer")!,title: "Tank Killer", levelAttainable: "30", descriptions: ["Your rifles ignore 12% armor and have a 3% chance to stagger.", "Your rifles ignore 24% armor and have a 6% chance to stagger.", "Your rifles ignore 36% armor and have a 9% chance to stagger."])
        
        var perkArray: [Perk] = []
        
        perkArray.append(perk1)
        perkArray.append(perk2)
        perkArray.append(perk3)
        perkArray.append(perk4)
        perkArray.append(perk5)
        perkArray.append(perk6)
        perkArray.append(perk7)
        perkArray.append(perk8)
        perkArray.append(perk9)
        perkArray.append(perk10)
        perkArray.append(perk11)
        perkArray.append(perk12)
        perkArray.append(perk13)
        perkArray.append(perk14)
        perkArray.append(perk15)
        perkArray.append(perk16)
        perkArray.append(perk17)
        perkArray.append(perk18)
        perkArray.append(perk19)
        perkArray.append(perk20)
        perkArray.append(perk21)
        perkArray.append(perk22)
        perkArray.append(perk23)
        perkArray.append(perk24)
        perkArray.append(perk25)
        perkArray.append(perk26)
        perkArray.append(perk27)
        perkArray.append(perk28)
        perkArray.append(perk29)
        
        return perkArray
        
        
    }
    
    static func createCharisma() -> [Perk]{
        
        var CharismaPerks: [Perk] = []
        CharismaPerks.append(Perk(pic: UIImage(named: "FO76_AnimalFriend")!,title: "Animal Friend", levelAttainable: "30", descriptions: ["Aim your gun at any Animal below your level for a 25% chance to pacify it.", "Aim your gun at any Animal below your level for a 50% chance to pacify it.", "Aim your gun at any Animal below your level for a 75% chance to pacify it."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Anti-Epidemic")!,title: "Anti-Epidemic ", levelAttainable: "34", descriptions: ["Your disease cures have a 50% chance to cure a disease on nearby teammates.", "Your disease cures always cure a disease from nearby teammates too."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Bloodsucker")!,title: "Bloodsucker", levelAttainable: "11", descriptions: ["Bloodpacks now satisfy thirst, no longer irradiate, and heal 50% more.", "Bloodpacks satisfy more thirst, no longer irradiate, and heal 100% more.", "Bloodpacks greatly satisfy thirst, no longer irradiate, and heal 150% more."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "FO76_Bodyguards")!,title: "Bodyguards", levelAttainable: "5", descriptions: ["Gain 6 Damage Resistance &amp; Energy Resistance (max 18) for each teammate, excluding you.", "Gain 8 Damage Resistance &amp; Energy Resistance (max 24) for each teammate, excluding you.", "Gain 10 Damage Resistance &amp; Energy Resistance (max 30) for each teammate, excluding you.", "Gain 12 Damage Resistance &amp; Energy Resistance (max 36) for each teammate, excluding you."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "EMT")!,title: "E.M.T.", levelAttainable: "9", descriptions: ["Players you revive come back with health regen for 15 seconds.", "Players you revive come back with health regen for 30 seconds.", "Players you revive come back with health regen for 60 seconds."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Field_Surgeon")!,title: "Field Surgeon", levelAttainable: "15", descriptions: ["Stimpacks and RadAway will now work much more quickly."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Friendly_Fire")!,title: "Friendly Fire", levelAttainable: "48", descriptions: ["Teammates hit by your flame weapons regen health briefly. (No Molotov)", "Teammates hit by your flame weapons regen more health briefly. (No Molotov)", "Teammates hit by your flame weapons regen even more health briefly. (No Molotov)"]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Happy_Camper_perk")!,title: "Happy Camper", levelAttainable: "3", descriptions: ["Hunger and thirst grow 40% more slowly when in camp or in a team workshop", "Hunger and thirst grow 80% more slowly when in camp or in a team workshop"]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Happy-go-lucky_perk")!,title: "Happy-Go-Lucky", levelAttainable: "17", descriptions: ["Your Luck is increased by 2 while under the influence of alcohol.", "Your Luck is increased by 3 while under the influence of alcohol."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Hard_Bargain")!,title: "Hard Bargain", levelAttainable: "7", descriptions: ["Buying and selling prices at vendors are better.", "Buying and selling prices at vendors are even better.", "Buying and selling prices at vendors are now much better."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Healing_Hands")!,title: "Healing Hands", levelAttainable: "28", descriptions: ["Players you revive are cured of all Rads."]))
        
        CharismaPerks.append(Perk(pic: UIImage(named: "Fo76_Injector")!,title: "Injector", levelAttainable: "19", descriptions: ["Players you revive have +6 Action Point regen for 10 minutes.", "Players you revive have +12 Action Point regen for 10 minutes.", "Players you revive have +18 Action Point regen for 10 minutes."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Fo76_Inspirational")!,title: "Inspirational", levelAttainable: "2", descriptions: ["When you are on a team, gain 5% more XP.", "When you are on a team, gain 10% more XP.", "When you are on a team, gain 15% more XP."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Fo76_Lone_Wanderer_perk")!,title: "Lone Wanderer", levelAttainable: "4", descriptions: ["When adventuring alone, take 10% less damage and gain 10% AP regen.", "When adventuring alone, take 15% less damage and gain 20% AP regen.", "When adventuring alone, take 20% less damage and gain 30% AP regen."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Fo76_Magnetic_Personality")!,title: "Magnetic Personality", levelAttainable: "13", descriptions: ["Gain 1 Charisma for each teammate, excluding yourself.", "Gain 2 Charisma for each teammate, excluding yourself."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Overly_Generous")!,title: "Overly Generous", levelAttainable: "32", descriptions: ["Rads increase your chance to inflict 25 rads with a melee attack", "Rads increase your chance to inflict 50 rads with a melee attack"]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Fo76_Party_Boy")!,title: "Party Boy", levelAttainable: "24", descriptions: ["The effects of alcohol are doubled.", "The effects of alcohol are tripled."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Philanthropist")!,title: "Philanthropist", levelAttainable: "39", descriptions: ["Restore some of your teammates hunger and thirst when you eat or drink.", "Restore more of your teammates hunger and thirst when you eat or drink.", "Restore much more of your teammates hunger and thirst when you eat or drink."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Quack_Surgeon_perk")!,title: "Quack Surgeon", levelAttainable: "22", descriptions: ["Revive other players with liquor!"]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Rad_Sponge")!,title: "Rad Sponge", levelAttainable: "44", descriptions: ["When affected by rads, you periodically heal 80 rads on nearby teammates.", "When affected by rads, you periodically heal 140 rads on nearby teammates.", "When affected by rads, you periodically heal 200 rads on nearby teammates."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Spiritual_Healer_perk")!,title: "Spiritual Healer", levelAttainable: "36", descriptions: ["You regenerate health for 5 seconds after reviving another player.", "You regenerate health for 10 seconds after reviving another player.", "You regenerate health for 15 seconds after reviving another player."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Squad_Maneuvers")!,title: "Squad Maneuver", levelAttainable: "37", descriptions: ["Run 10% faster when part of a team.", "Run 20% faster when part of a team."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Strange_in_Numbers_perk")!,title: "Strange in", levelAttainable: "42", descriptions: ["Positive mutation effects are 25% stronger if teammates are mutated too."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Suppressor_perk")!,title: "Suppressor ", levelAttainable: "40", descriptions: ["Reduce your target's damage output by 10% for 2 seconds after hitting it.", "Reduce your target's damage output by 20% for 2 seconds after hitting it.", "Reduce your target's damage output by 30% for 2 seconds after hitting it."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Team_Medic")!,title: "Team Medic", levelAttainable: "20", descriptions: ["Your stimpaks now also heal your teammates for half the normal strength.", "Your stimpaks now also heal nearby teammates for 75% of normal strength.", "Your stimpaks now also heal nearby teammates for their full strength."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Fo76_Tenderizer")!,title: "Tenderizer", levelAttainable: "46", descriptions: ["Make your target receive 5% more damage for 5 seconds after you attack.", "Make your target receive 6% more damage for 7 seconds after you attack.", "Make your target receive 7% more damage for 10 seconds after you attack."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Fo76_Travel_Agent")!,title: "Travel Agent", levelAttainable: "26", descriptions: ["You pay 30% fewer Caps when Fast Traveling."]))

        CharismaPerks.append(Perk(pic: UIImage(named: "Fo76_Wasteland_Whisperer")!,title: "Wasteland Whisperer", levelAttainable: "50", descriptions: ["Aim your gun a creature below your level for a 25% chance to pacify it.", "Aim your gun a creature below your level for a 50% chance to pacify it.", "Aim your gun a creature below your level for a 75% chance to pacify it."]))

        

        return CharismaPerks

    }

    static func createEndurance() -> [Perk]{

        var EndurancePerks: [Perk] = []

        EndurancePerks.append(Perk(pic: UIImage(named: "Fo76_Adamantium_Skeleton")!,title: "Adamantium Skeleton", levelAttainable: "21", descriptions: ["Your limb damage is now reduced by 30%", "Your limb damage is now reduced by 60%", "Your limb damage is completely eliminated."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "All_Night_Long")!,title: "All Night", levelAttainable: "41", descriptions: ["You suffer 20% less from hunger and thirst (at night).", "You suffer 40% less from hunger and thirst (at night).", "You suffer 60% less from hunger and thirst (at night)."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Fo76_Aquaboy")!,title: "Aquaboy", levelAttainable: "26", descriptions: ["You no longer take Rad damage from swimming and can breathe underwater."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Fo76_Cannibal")!,title: "Cannibal", levelAttainable: "15", descriptions: ["Eating Human, Ghoul, Super Mutant, Scorched, or Mole Miner corpses restores Health and hunger.", "Eating Human, Ghoul, Super Mutant, Scorched, or Mole Miner corpses restores more Health and hunger.", "Eating Human, Ghoul, Super Mutant, Scorched, or Mole Miner corpses restores even more Health and hunger."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Chem_Fiend")!,title: "Chem Fiend", levelAttainable: "23", descriptions: ["Any chems you take last 30% longer.", "Any chems you take last 60% longer.", "Any chems you take last 100% longer."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Fo76_Chem_Resistant")!,title: "Chem Resistant", levelAttainable: "43", descriptions: ["You're half as likely to get addicted when consuming Chems.", "You gain complete immunity to chem addiction."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Cola_Nut")!,title: "Cola Nut", levelAttainable: "14", descriptions: ["Nuka-Cola products are now twice as beneficial.", "Nuka-Cola products are now three times as beneficial."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Dromedary_perk")!,title: "Dromedary", levelAttainable: "3", descriptions: ["All drinks quench thirst by an additional 25%.", "All drinks quench thirst by an additional 50%.", "All drinks quench thirst by an additional 75%."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Fireproof")!,title: "Fireproof", levelAttainable: "27", descriptions: ["Immediately gain +20 Fire Resistance.", "Immediately gain +40 Fire Resistance.", "Immediately gain +60 Fire Resistance."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Fo76_Ghoulish")!,title: "Ghoulish", levelAttainable: "36", descriptions: ["Radiation now regenerates your lost Health.", "Radiation now regenerates more of your lost Health.", "Radiation now regenerates even more of your lost Health!"]))

        EndurancePerks.append(Perk(pic: UIImage(named: "FO76_Good_Doggy")!,title: "Good Doggy", levelAttainable: "8", descriptions: ["Eating dog food is now three times as beneficial."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Hydro_Fix")!,title: "Hydro Fix", levelAttainable: "11", descriptions: ["Chems generate 50% less thirst", "Chems no longer generate thirst"]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Homebody")!,title: "Homebody", levelAttainable: "19", descriptions: ["Gain gradual health regeneration while in your camp or workshop.", "Gain improved health and limb regeneration while in your camp or workshop."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Iron_Stomach")!,title: "Iron Stomach", levelAttainable: "4", descriptions: ["Your chance to catch a disease from food is reduced by 30%.", "Your chance to catch a disease from food is reduced by 60%.", "Your chance to catch a disease from food is reduced by 90%."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Ironclad")!,title: "Ironclad", levelAttainable: "30", descriptions: ["Gain 10 Damage and Energy Resistance while not wearing Power Armor.", "Gain 20 Damage and Energy Resistance while not wearing Power Armor.", "Gain 30 Damage and Energy Resistance while not wearing Power Armor.", "Gain 40 Damage and Energy Resistance while not wearing Power Armor.", "Gain 50 Damage and Energy Resistance while not wearing Power Armor."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Fo76_Lead_Belly")!,title: "Lead Belly", levelAttainable: "2", descriptions: ["You take 30% less radiation from eating or drinking.", "You take 60% less radiation from eating or drinking.", "You take no radiation from eating or drinking."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Fo76_Lifegiver")!,title: "Lifegiver", levelAttainable: "50", descriptions: ["Gain a total of +10% to your maximum Health.", "Gain a total of +15% to your maximum Health.", "Gain a total of +30% to your maximum Health."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "FO76_Munchy_Resistance")!,title: "Munchy Resistance", levelAttainable: "17", descriptions: ["Using chems induces 50% less hunger.", "Chems now never induce hunger."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Natural_Resistance")!,title: "Natural Resistance", levelAttainable: "10", descriptions: ["You are 30% less likely to catch a disease from the environment", "You are 60% less likely to catch a disease from the environment", "You are 90% less likely to catch a disease from the environment"]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Nocturnal_Fortitude")!,title: "Nocturnal Fortitude", levelAttainable: "31", descriptions: ["Gain +20 to Max Health between the hours of 6 p.m. and 6 a.m.", "Gain +40 to Max Health between the hours of 6 p.m. and 6 a.m."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Photosynthetic")!,title: "Photosynthetic", levelAttainable: "47", descriptions: ["Gain health regen between the hours of 6 a.m. and 6 p.m.", "Gain improved Health regen between the hours of 6 a.m. and 6 p.m."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Professional_Drinker_perk")!,title: "Professional Drinker", levelAttainable: "39", descriptions: ["There's no chance you'll get addicted to alcohol"]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Fo76_Rad_Resistant")!,title: "Rad Resistant", levelAttainable: "34", descriptions: ["+10% Rad resistance.", "+20% Rad resistance.", "+30% Rad resistance.", "+40% Rad resistance."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Radicool")!,title: "Radicool", levelAttainable: "38", descriptions: ["The greater your rads, the greater your strength! (+5 Max)"]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Rejuvenated")!,title: "Rejuvenated", levelAttainable: "12", descriptions: ["You gain increased benefit from being Well Fed or Well Hydrated.", "You gain much increased benefit from being Well Fed or Well Hydrated."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Revenant")!,title: "Revenant", levelAttainable: "32", descriptions: ["Gain +25% damage bonus for 2 minutes when a player revives you.", "Gain +50% damage bonus for 2 minutes when a player revives you."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Slow_Metabolizer_perk")!,title: "Slow Metabolizer", levelAttainable: "5", descriptions: ["All food satisfies hunger by an additional 25%.", "All food satisfies hunger by an additional 50%.", "All food satisfies hunger by an additional 75%."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Fo76_Solar_Powered")!,title: "Solar Powered", levelAttainable: "22", descriptions: ["Gain +1 to STR and END between the hours of 6:00 a.m. and 6:00 p.m.", "Gain +2 to STR and END between the hours of 6:00 a.m. and 6:00 p.m.", "Gain +3 to STR and END between the hours of 6:00 a.m. and 6:00 p.m."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Sun_Kissed")!,title: "Sun Kissed", levelAttainable: "45", descriptions: ["Slowly regen radiation damage between the hours of 6 a.m. and 6 p.m.", "Quickly regen radiation damage between the hours pg 6 a.m. and 6 p.m."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Thirst_Quencher")!,title: "Thirst Quencher", levelAttainable: "6", descriptions: ["Drinking any liquid has a 30% reduced chance to cause disease.", "Drinking any liquid has a 60% reduced chance to cause disease.", "Drinking any liquid has a 90% reduced chance to cause disease."]))

        EndurancePerks.append(Perk(pic: UIImage(named: "Vaccinated_perk")!,title: "Vaccinated", levelAttainable: "16", descriptions: ["Chance of catching a disease from creatures is reduced by 30%", "Chance of catching a disease from creatures is reduced by 60%", "Chance of catching a disease from creatures is reduced by 90%"]))
        
        return EndurancePerks

    }
    
    static func createIntelligence() -> [Perk]{
        var intelligenceArray: [Perk] = []
        
        
        intelligenceArray.append(Perk(pic: UIImage(named: "StandBy")!,title: "Armorer", levelAttainable: "15", descriptions: ["You can now craft advanced armor mods. (Plans Required)", "Crafting armor now cost fewer materials.", "Your crafted armor has improved durability."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "StandBy")!,title: "Batteries Included", levelAttainable: "28", descriptions: ["Energy weapon ammo weighs 30% less.", "Energy weapon ammo weighs 60% less.", "Energy weapon ammo weighs 90% less."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Fo76_Chemist")!,title: "Chemist", levelAttainable: "34", descriptions: ["You get double the quantity when you craft chems!"]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Contractor_perk")!,title: "Contractor", levelAttainable: "18", descriptions: ["Crafting workshop items now costs 25% fewer materials.", "Crafting workshop items now costs 50% fewer materials."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "StandBy")!,title: "Demolition Expert", levelAttainable: "10", descriptions: ["Your explosives do +20% damage", "Your explosives do +40% damage", "Your explosives do +60% damage", "Your explosives do +80% damage", "Your explosives do +100% damage"]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Expert_Hacker")!,title: "Expert Hacker", levelAttainable: "22", descriptions: ["Gain +1 hacking skill, and terminal lock-out time is reduced."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Fo76_First_Aid_perk")!,title: "First Aid", levelAttainable: "2", descriptions: ["Stimpaks restore 15% more lost Health.", "Stimpaks restore 30% more lost Health.", "Stimpaks restore 45% more lost Health."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Fix_It_Good")!,title: "Fix it Good", levelAttainable: "27", descriptions: ["You can repair armor and Power Armor to 130% of normal maximum condition.", "You can repair armor and Power Armor to 160% of normal maximum condition.", "You can repair armor and Power Armor to 200% of normal maximum condition."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Gunsmith")!,title: "Gunsmith", levelAttainable: "11", descriptions: ["Guns break 10% slower and you can now craft Tier 1 guns (Plans required).", "Guns break 20% slower and you can now craft Tier 2 guns (Plans required).", "Guns break 30% slower and you can now craft Tier 3 guns (Plans required).", "Guns break 40% slower and you can now craft Tier 4 guns (Plans required).", "Guns break 50% slower and you can now craft Tier 5 guns (Plans required)."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Hacker")!,title: "Hacker", levelAttainable: "4", descriptions: ["Gain +1 hacking skill, and terminal lock-out time is reduced."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Licensed_Plumber")!,title: "Licensed Plumber", levelAttainable: "5", descriptions: ["Your pipe weapons break 30% more slowly and are cheaper to repair.", "Your pipe weapons break 60% more slowly and are cheaper to repair.", "Your pipe weapons break 90% more slowly and are cheaper to repair."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Makeshift_Warrior")!,title: "Makeshift Warrior", levelAttainable: "9", descriptions: ["Melee weapons break 10% slower and you can craft Tier 1 melee weapons. (Plans required)", "Melee weapons break 20% slower and you can craft Tier 2 melee weapons. (Plans required)", "Melee weapons break 30% slower and you can craft Tier 3 melee weapons. (Plans required)", "Melee weapons break 40% slower and you can craft Tier 4 melee weapons. (Plans required)", "Melee weapons break 50% slower and you can craft Tier 5 melee weapons. (Plans required)"]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Master_Hacker_perk")!,title: "Master Hacker", levelAttainable: "38", descriptions: ["Gain +1 hacking skill, and terminal lock-out time is reduced."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Fo76_Nerd_Rage")!,title: "Nerd Rage", levelAttainable: "46", descriptions: ["While below 20% Health, gain 20 Damage Resist, 10% damage and 15% AP regen.", "While below 20% Health, gain 30 Damage Resist, 15% damage and 15% AP regen.", "While below 20% Health, gain 40 Damage Resist, 20% damage and 15% AP regen."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "FO76_Pharmacist")!,title: "Pharmacist", levelAttainable: "6", descriptions: ["RadAway removes 30% more radiation.", "RadAway removes 60% more radiation.", "RadAway removes 90% more radiation."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Portable_Power")!,title: "Portable Power", levelAttainable: "49", descriptions: ["All Power Armor parts and chassis weights are reduced by 25%.", "All Power Armor parts and chassis weights are reduced by 50%.", "All Power Armor parts and chassis weights are reduced by 75%."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Power_Smith")!,title: "Power Smith", levelAttainable: "41", descriptions: ["You can now craft advanced Power Armor suits. (Plans required)", "Crafting Power Armor now cost fewer materials.", "Your crafted Power Armor now has improved durability."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Power_Patcher")!,title: "Power Patcher", levelAttainable: "44", descriptions: ["Your Power Armor breaks 20% more slowly and is cheaper to repair.", "Your Power Armor breaks 40% more slowly and is cheaper to repair.", "Your Power Armor breaks 60% more slowly and is cheaper to repair."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "StandBy")!,title: "Power User", levelAttainable: "50", descriptions: ["Fusion Cores now last 30% longer.", "Fusion Cores now last 60% longer.", "Fusion Core duration is now doubled."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Fo76_Robotics_Expert")!,title: "Robotics Expert", levelAttainable: "48", descriptions: ["Hack an enemy robot for a 25% chance to pacify it.", "Hack an enemy robot for a 50% chance to pacify it.", "Hack an enemy robot for a 75% chance to pacify it."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Fo76_Science")!,title: "Science", levelAttainable: "20", descriptions: ["You can now craft energy guns. (Plans required)", "You can craft Rank 1 energy gun mods. (Plans required)"]))

        intelligenceArray.append(Perk(pic: UIImage(named: "StandBy")!,title: "Science Expert", levelAttainable: "31", descriptions: ["You can craft Rank 2 energy gun mods. (Plans required)", "Crafting energy guns now costs fewer materials."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Science_Master")!,title: "Science Master", levelAttainable: "43", descriptions: ["You can craft Rank 3 energy gun mods. (Plans required)", "Your crafted energy guns have improved durability."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "StandBy")!,title: "Scrapper", levelAttainable: "13", descriptions: ["Obtain more components when you scrap weapons and armor."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Stabilized")!,title: "Stabilized", levelAttainable: "36", descriptions: ["In Power Armor, heavy guns gain more accuracy and ignore 15% armor.", "In Power Armor, heavy guns gain even more accuracy and ignore 30% armor.", "In Power Armor, heavy guns gain excellent accuracy and ignore 45% armor."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Weapon_Artisan")!,title: "Weapon Artisan", levelAttainable: "40", descriptions: ["You can repair any weapon to 130% of normal maximum condition.", "You can repair any weapon to 160% of normal maximum condition.", "You can repair any weapon to 200% of normal maximum condition."]))

        intelligenceArray.append(Perk(pic: UIImage(named: "Wrecking_Ball")!,title: "Wrecking Ball", levelAttainable: "29", descriptions: ["You deal +40% damage to workshop objects.", "You deal +80% damage to workshop objects.", "You deal +120% damage to workshop objects."]))


        return intelligenceArray
    }

    static func createAgility() -> [Perk]{
        
        var AgilityPerks: [Perk] = []

        AgilityPerks.append(Perk(pic: UIImage(named: "Fo76_Action_Boy")!, title: "Action Boy", levelAttainable: "2", descriptions: ["Action points generate 15% faster.", "Action points generate 30% faster.", "Action points generate 45% faster."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Fo76_Adrenaline")!, title: "Adrenaline", levelAttainable: "49", descriptions: ["Gain +6% (max 36%) damage for 30s per kill. Duration refreshes with kills.", "Gain +7% (max 42%) damage for 30s per kill. Duration refreshes with kills.", "Gain +8% (max 48%) damage for 30s per kill. Duration refreshes with kills.", "Gain +9% (max 54%) damage for 30s per kill. Duration refreshes with kills.", "Gain +10% (max 60%) damage for 30s per kill. Duration refreshes with kills."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Ammosmith")!, title: "Ammosmith", levelAttainable: "34", descriptions: ["Produce 40% more rounds when crafting ammunition.", "Produce 80% more rounds when crafting ammunition."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Fo76_Born_Survivor")!, title: "Born Survivor", levelAttainable: "3", descriptions: ["Falling below 20% health will automatically use a Stimpak.", "Falling below 30% health will automatically use a Stimpak.", "Falling below 40% health will automatically use a Stimpak."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Covert_Operative")!, title: "Covert Operative", levelAttainable: "27", descriptions: ["Your ranged attacks do 2.15x normal damage damage.", "Your ranged attacks do 2.3x normal damage damage.", "Your ranged attacks do 2.5x normal damage damage."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Dead_Man_Sprinting")!, title: "Dead Man", levelAttainable: "8", descriptions: ["Sprint 10% faster at increased AP cost when your health is below 40%.", "Sprint 20% faster at increased AP cost when your health is below 40%."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Dodgy")!, title: "Dodgy", levelAttainable: "45", descriptions: ["Spend 30 Action Points to avoid 10% of each enemy attack.", "Spend 30 Action Points to avoid 20% of each enemy attack.", "Spend 30 Action Points to avoid 30% of each enemy attack."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Enforcer")!, title: "Enforcer", levelAttainable: "30", descriptions: ["Your shotguns gain a 5% stagger chance and a 10% chance to cripple a limb.", "Your shotguns gain a 10% stagger chance and a 20% chance to cripple a limb.", "Your shotguns gain a 15% stagger chance and a 30% chance to cripple a limb."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Escape_Artist")!, title: "Escape Artist", levelAttainable: "35", descriptions: ["Sneak to lose enemies, and running no longer affect stealth."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Evasive")!, title: "Evasive", levelAttainable: "17", descriptions: ["Each AGI point adds +1 Damage and Energy Resist (Max 15). (No Power Armor)", "Each AGI point adds +2 Damage and Energy Resist (Max 30). (No Power Armor)", "Each AGI point adds +3 Damage and Energy Resist (Max 45). (No Power Armor)"]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Expert_Guerrilla")!, title: "Expert Guerrilla", levelAttainable: "25", descriptions: ["Your automatic pistols now do +10% damage", "Your automatic pistols now do +15% damage", "Your automatic pistols now do +20% damage"]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Expert_Gunslinger")!, title: "Expert Gunslinger", levelAttainable: "24", descriptions: ["Your non-automatic pistols now do +10% damage.", "Your non-automatic pistols now do +15% damage.", "Your non-automatic pistols now do +20% damage."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Goat_Legs")!, title: "Goat Legs", levelAttainable: "32", descriptions: ["Take 40% less damage from falling.", "Take 80% less damage from falling."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Guerrilla")!, title: "Guerrilla", levelAttainable: "10", descriptions: ["Your automatic pistols now do +10% damage", "Your automatic pistols now do +15% damage", "Your automatic pistols now do +20% damage"]))

        AgilityPerks.append(Perk(pic: UIImage(named: "StandBy")!, title: "Gun Fu", levelAttainable: "50", descriptions: ["V.A.T.S. swaps targets on kill with +10% damage to your next target.", "V.A.T.S. swaps targets on kill with +10% then 20% damage to your next 2 targets.", "V.A.T.S. swaps targets on kill with +10%, 20%, then 30% damage to your next 3 targets."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Fo76_Gun_Runner")!, title: "Gun Runner", levelAttainable: "4", descriptions: ["Your running speed is increased by 10% when you have a pistol equipped", "Your running spead is increased by 20% when you have a pistol equipped"]))

        AgilityPerks.append(Perk(pic: UIImage(named: "FO76_Gunslinger")!, title: "Gunslinger", levelAttainable: "6", descriptions: ["Your non-automatic pistols now do +10% damage.", "Your non-automatic pistols now do +15% damage.", "Your non-automatic pistols now do +20% damage."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Home_Defense")!, title: "Home Defense", levelAttainable: "22", descriptions: ["You can craft and disarm better traps and craft better turrets. (Plans required)", "You can craft and disarm advanced traps and craft advanced turrets. (Plans required)", "You can craft and disarm expert traps and craft expert turrets. (Plans required)"]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Light_Footed")!, title: "Light Footed", levelAttainable: "38", descriptions: ["While sneaking, you never trigger mines or floor-based traps."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Marathoner")!, title: "Marathoner", levelAttainable: "13", descriptions: ["Sprinting consumes 20% fewer Action Points.", "Sprinting consumes 40% fewer Action Points.", "Sprinting consumes 60% fewer Action Points."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Master_Guerrila")!, title: "Master Guerrilla", levelAttainable: "43", descriptions: ["Your automatic pistols now do +10% damage", "Your automatic pistols now do +15% damage", "Your automatic pistols now do +20% damage"]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Master_Gunslinger")!, title: "Master Gunslinger", levelAttainable: "41", descriptions: ["Your non-automatic pistols now do +10% damage.", "Your non-automatic pistols now do +15% damage.", "Your non-automatic pistols now do +20% damage."]))
        
        AgilityPerks.append(Perk(pic: UIImage(named: "Fo76_Mister_Sandman")!, title: "Mister Sandman", levelAttainable: "37", descriptions: ["At night your silenced weapons do an additonal 25% sneak attack damage.", "At night your silenced weapons do an additonal 50% sneak attack damage."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Modern_Renegade")!, title: "Modern Renegade", levelAttainable: "18", descriptions: ["Gain Pistol hip fire accuracy and a +2% chance to cripple a limb.", "Gain more Pistol hip fire accuracy and a +3% chance to cripple a limb.", "Gain excellent Pistol hip fire accuracy and a +4% chance to cripple a limb."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Fo76_Moving_Target")!, title: "Moving Target", levelAttainable: "5", descriptions: ["Gain +15 Damage and Energy Resistance while sprinting. (No Power Armor)", "Gain +30 Damage and Energy Resistance while sprinting. (No Power Armor)", "Gain +45 Damage and Energy Resistance while sprinting. (No Power Armor)"]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Fo76_Ninja")!, title: "Ninja", levelAttainable: "15", descriptions: ["Your melee sneak attacks do 2.3x normal damage.", "Your melee sneak attacks do 2.6x normal damage.", "Your melee sneak attacks do 3x normal damage."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Fo76_Packin'_Light")!, title: "Packin' Light", levelAttainable: "9", descriptions: ["Your pistols weigh 25% less.", "Your pistols weigh 50% less.", "Your pistols weigh 75% less."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Fo76_Secret_Agent")!, title: "Secret Agent", levelAttainable: "47", descriptions: ["Stealth Boys last twice as long.", "Stealth Boys last three times as long.", "Stealth Boys last four times as long."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Fo76_Sneak")!, title: "Sneak", levelAttainable: "20", descriptions: ["You are 25% harder to detect while sneaking.", "You are 50% harder to detect while sneaking.", "You are 75% harder to detect while sneaking."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "Thru-Hiker_perk")!, title: "Thru-Hiker", levelAttainable: "7", descriptions: ["Food and drink weights are reduced by 30%.", "Food and drink weights are reduced by 60%.", "Food and drink weights are reduced by 90%."]))

        AgilityPerks.append(Perk(pic: UIImage(named: "White_Knight")!, title: "White Knight", levelAttainable: "39", descriptions: ["Your armor breaks 30% more slowly and is cheaper to repair.", "Your armor breaks 60% more slowly and is cheaper to repair.", "Your armor breaks 90% more slowly and is cheaper to repair."]))

        

        
        return AgilityPerks

    }
    
    static func createLuck() -> [Perk] {
        var LuckPerks: [Perk] = []
        
        LuckPerks.append(Perk(pic: UIImage(named: "StandBy")!, title: "Better Criticals", levelAttainable: "47", descriptions: ["V.A.T.S. criticals now do +20% damage.", "V.A.T.S. criticals now do +30% damage.", "V.A.T.S. criticals now do +40% damage."]))

        LuckPerks.append(Perk(pic: UIImage(named: "StandBy")!, title: "Bloody Mess", levelAttainable: "42", descriptions: ["5% bonus damage means enemies may explode into a gory red paste.", "10% bonus damage means enemies may explode into a gory red paste.", "15% bonus damage means enemies may explode into a gory red paste."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Can_Do!")!, title: "Can Do", levelAttainable: "7", descriptions: ["10% chance to find an extra canned food when you \"Search\" a food container.", "20% chance to find an extra canned food when you \"Search\" a food container", "30% chance to find an extra canned food when you \"Search\" a food container"]))

        LuckPerks.append(Perk(pic: UIImage(named: "StandBy")!, title: "Cap Collector", levelAttainable: "16", descriptions: ["You have a chance to find more bottle caps when opening a caps stash.", "You have a better chance to find more caps when opening a caps stash.", "You always find more bottle caps when opening a caps stash."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Class_Freak")!, title: "Class Freak", levelAttainable: "46", descriptions: ["The negative effects of your mutations are reduced by 25%.", "The negative effects of your mutations are reduced by 50%.", "The negative effects of your mutations are reduced by 75%."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Critical_Savvy")!, title: "Critical Savvy", levelAttainable: "44", descriptions: ["Critical Hits now only consume 85% of your critical meter.", "Critical Hits now only consume 70% of your critical meter.", "Critical Hits now only consume 55% of your critical meter."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Curator")!, title: "Curator", levelAttainable: "19", descriptions: ["The benefits of bobbleheads and magazines last twice as long."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Dry_Nurse")!, title: "Dry Nurse", levelAttainable: "23", descriptions: ["You have a 50% chance to keep your Stimpak when you revive another player."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Fo76_Four_Leaf_Clover")!, title: "Four Leaf", levelAttainable: "29", descriptions: ["Each hit in V.A.T.S. has a chance to fill your Critical meter.", "Each hit in V.A.T.S. has a better chance to fill your Critical meter.", "Each hit in V.A.T.S. has an excellent chance to fill your Critical meter."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Good_with_Salt")!, title: "Good with Salt", levelAttainable: "9", descriptions: ["Food in your inventory will spoil 30% more slowly.", "Food in your inventory will spoil 60% more slowly.", "Food in your inventory will spoil 90% more slowly."]))

        LuckPerks.append(Perk(pic: UIImage(named: "StandBy")!, title: "Grim Reaper", levelAttainable: "33", descriptions: ["Any kill in V.A.T.S. has a 15% chance to restore all Action Points.", "Any kill in V.A.T.S. has a 25% chance to restore all Action Points.", "Any kill in V.A.T.S. has a 35% chance to restore all Action Points."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Junk_Shield")!, title: "Junk Shield", levelAttainable: "10", descriptions: ["Carry junk to gain up to 10 damage resistance. (No Power Armor)", "Carry junk to gain up to 20 damage resistance. (No Power Armor)", "Carry junk to gain up to 30 damage resistance. (No Power Armor)"]))

        LuckPerks.append(Perk(pic: UIImage(named: "Last_Laugh")!, title: "Last Laugh", levelAttainable: "27", descriptions: ["You drop a live grenade from your inventory when you die."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Luck_of_the_Draw")!, title: "Luck of the Draw", levelAttainable: "14", descriptions: ["Your weapon has a 10% chance to regain condition when hitting an enemy.", "Your weapon has a 20% chance to regain condition when hitting an enemy.", "Your weapon has a 30% chance to regain condition when hitting an enemy."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Lucky_Break")!, title: "Lucky Break", levelAttainable: "24", descriptions: ["Slight chance your equipped armor will repair itself when struck.", "Chance your equipped armor will repair itself even more when struck.", "Chance your equipped armor will greatly repair itself when struck."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Mysterious_Savior")!, title: "Mysterious Savior", levelAttainable: "49", descriptions: ["A Mysterious Savior will occasionally appear to revive you when downed.", "A Mysterious Savior will more frequently appear to revive you when downed.", "The Mysterious Savior will regularly appear to revive you when downed."]))

        LuckPerks.append(Perk(pic: UIImage(named: "StandBy")!, title: "Mysterious Stranger", levelAttainable: "26", descriptions: ["The Mysterious Stranger will appear occasionally in V.A.T.S. to lend a hand.", "The Mysterious Stranger appears more often when using V.A.T.S.", "The Mysterious Stranger appears so much in V.A.T.S., he knows you by name."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Mystery_Meat_perk")!, title: "Mystery Meat", levelAttainable: "12", descriptions: ["Stimpaks may generate edible meat tissue. Higher Rads improve the chance.", "Stimpaks generate edible meat. Higher Rads improve the chance.", "Stimpaks generate excessive edible meat. Higher Rads improve the chance."]))

        LuckPerks.append(Perk(pic: UIImage(named: "One_Gun_Army")!, title: "One Gun Army", levelAttainable: "31", descriptions: ["Heavy guns gain a 4% stagger chance and a 4% chance to cripple a limb.", "Heavy guns gain a 8% stagger chance and a 8% chance to cripple a limb.", "Heavy guns gain a 12% stagger chance and a 12% chance to cripple a limb."]))

        LuckPerks.append(Perk(pic: UIImage(named: "FO76_Pharma_Farma")!, title: "Pharma Farma", levelAttainable: "2", descriptions: ["40% chance to find extra first aid Chems when you \"Search\" a chem container.", "60% chance to find extra first aid Chems when you \"Search\" a chem container.", "80% chance to find extra first aid Chems when you \"Search\" a chem container."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Psychopath")!, title: "Psychopath", levelAttainable: "21", descriptions: ["Every kill is V.A.T.S has a 10% chance to refill your Critical Meter.", "Every kill is V.A.T.S has a 20% chance to refill your Critical Meter.", "Every kill is V.A.T.S has a 30% chance to refill your Critical Meter."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Fo76_Quick_Hands")!, title: "Quick Hands", levelAttainable: "40", descriptions: ["Gain a 6% chance to instantly reload when your clip is empty.", "Gain a 12% chance to instantly reload when your clip is empty.", "Gain a 18% chance to instantly reload when your clip is empty."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Fo76_Ricochet")!, title: "Ricochet", levelAttainable: "38", descriptions: ["Gain a 6% chance to deflect back some of enemies' ranged damage. (No PvP)", "Gain a 12% chance to deflect back some of enemies' ranged damage. (No PvP)", "Gain a 18% chance to deflect back some of enemies' ranged damage. (No PvP)"]))

        LuckPerks.append(Perk(pic: UIImage(named: "Fo76_Scrounger_perk")!, title: "Scrounger", levelAttainable: "3", descriptions: ["40% chance to find extra ammo when you \"Search\" an ammo container.", "60% chance to find extra ammo when you \"Search\" an ammo container.", "80% chance to find extra ammo when you \"Search\" an ammo container."]))

        LuckPerks.append(Perk(pic: UIImage(named: "FO76_Serendipity")!, title: "Serendipity", levelAttainable: "5", descriptions: ["While below 35% health, gain a 15% chance to avoid damage.", "While below 35% health, gain a 30% chance to avoid damage.", "While below 35% health, gain a 45% chance to avoid damage."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Starched_Genes")!, title: "Starched Genes", levelAttainable: "30", descriptions: ["Less chance for you to mutate from rads or for Radaway to cure mutations.", "You will never mutate from Rads and Radaway will never cure mutations."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Stom_Chaser")!, title: "Storm Chaser", levelAttainable: "35", descriptions: ["Gain health regeneration while outside during rain or Rad Storms.", "Gain high health regeneration while outside during rain or Rad Storms."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Super_Duper")!, title: "Super Duper", levelAttainable: "50", descriptions: ["When you craft anything, there is a 10% chance you'll get double results!", "When you craft anything, there is a 20% chance you'll get double results!", "When you craft anything, there is a 30% chance you'll get double results!"]))

        LuckPerks.append(Perk(pic: UIImage(named: "Tormentor")!, title: "Tormentor", levelAttainable: "37", descriptions: ["Your rifle attacks have a 5% chance of crippling a limb.", "Your rifle attacks have a 10% chance of crippling a limb.", "Your rifle attacks have a 15% chance of crippling a limb."]))

        LuckPerks.append(Perk(pic: UIImage(named: "Woodchucker")!, title: "Woodchucker", levelAttainable: "17", descriptions: ["Collect twice as much when harvesting wood"]))
                                                                                                                            
        
        return LuckPerks
    }
}

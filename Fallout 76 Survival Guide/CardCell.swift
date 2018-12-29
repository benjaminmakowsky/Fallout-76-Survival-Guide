//
//  CardCell.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 11/24/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//

import UIKit
import Foundation



class CardCell: UITableViewCell {
    
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var cardTitleLabel: UILabel!
    @IBOutlet weak var levelReqLabel: UILabel!
    
    
    func setTitle(name: String){
        cardTitleLabel.text = name
    }
    
    func setLevelReq(level: String){
        levelReqLabel.text = level
    }
    
    func setPerkImage(pic: UIImage) {
        cardImageView.image = pic
    }
    

}

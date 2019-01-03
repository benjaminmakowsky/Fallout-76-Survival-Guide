//
//  QuestCell.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 12/31/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//

import Foundation
import UIKit

class QuestCell: UITableViewCell {
    
    @IBOutlet weak var questTitle: UILabel!
    @IBOutlet weak var questImage: UIImageView!
    
    func setTitle(title: String) {
        questTitle.text = title
    }
    
    func setImage(image: UIImage){
        questImage.image = image
    }

	func setRewards(){
        
    }
}

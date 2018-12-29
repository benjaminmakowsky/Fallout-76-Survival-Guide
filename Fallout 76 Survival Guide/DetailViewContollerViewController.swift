//
//  DetailViewContollerViewController.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 11/26/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//

import UIKit

class DetailViewContollerViewController: UIViewController {

    //Set up variable to get ready to receive
    var perk: Perk?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    
    @IBOutlet weak var firstDLabal: UILabel!
    @IBOutlet weak var secondDLabel: UILabel!
    @IBOutlet weak var thirdDLabel: UILabel!
    @IBOutlet weak var fourthDLabel: UILabel!
    @IBOutlet weak var fifthDLabel: UILabel!
    
    @IBOutlet weak var perkPic: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        firstDLabal.text = ""
        secondDLabel.text = ""
        thirdDLabel.text = ""
        fourthDLabel.text = ""
       // fifthDLabel.text = ""
        setUI()
        
    }
    
    func setUI(){
        
        //Set initial values
        nameLabel.text = perk?.title
        levelLabel.text = "Level Available: " + String((perk?.levelAttainable)!)
        perkPic.image = perk?.image

        //Create the description labels
        var i = 0
        let labels = [firstDLabal, secondDLabel, thirdDLabel, fourthDLabel, fifthDLabel]
        for description in (perk?.descriptions)!{
            labels[i]?.text = description
            i = i+1
        }
    }
    
    
    
   

}

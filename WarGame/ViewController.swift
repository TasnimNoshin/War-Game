//
//  ViewController.swift
//  WarGame
//
//  Created by Jonathan Boulanger on 2017-05-24.
//  Copyright © 2017 Tasnim Jenny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var winner: UILabel!
    @IBOutlet weak var button: UIButton!
    var buttonPress = 0
    
    var cards = ["card2", "card3", "card4", "card5" , "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        buttonPress += 1
        
        let rightRandom = Int(arc4random_uniform(13))
        rightImage.image = UIImage.init(named: cards[rightRandom])
        
        let leftRandom = Int(arc4random_uniform(13))
        leftImage.image = UIImage.init(named: cards[leftRandom])
        
        
        if(rightRandom > leftRandom){
            
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        }
        else if(rightRandom < leftRandom){
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }
        else{
            
            
        }
        
        if (buttonPress > 13){
            button.isEnabled = false
            
            if rightScore > leftScore {
                winner.text = "CPU wins!!!"
            }
            else if rightScore < leftScore{
                winner.text = "Player Wins!!!"
            }
            else{
                winner.text = "Draw!!!"
            }
        }
        
        
    }
}



//
//  CardGameController.swift
//  CardGame
//
//  Created by Hatchell, Kadin on 10/27/16.
//  Copyright © 2016 Hatchell, Kadin. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
   
    
    @IBOutlet weak var cardLabel: UILabel!
    
    @IBOutlet weak var cardButton: UIButton!
    
    private lazy var currentDeck = PlayingCardDeck()
    
    private lazy var clickCount = Int()
    
    override func viewDidLoad()
    {
        let tempCard = Card()
        print(tempCard.toString())
        let otherTemp = PlayingCard()
        print(otherTemp.toString())
        
    }
    @IBAction func flipCard(sender: UIButton)
    {
        clickCount += 1
        let words = "The card has been clicked \(clickCount) times"
        cardLabel.text = words
        
        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            cardLabel.text = "The deck was exhausted - reinitializing"
            self.currentDeck = PlayingCardDeck()
        }
    }
    
}

//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Hatchell, Kadin on 10/31/16.
//  Copyright © 2016 Hatchell, Kadin. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{
        
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank < PlayingCard.maxRank(); rank += 1
            {
                let currentCard = PlayingCard(withRank: rank, ofSuit: suit)
                self.cards.append(currentCard)
            }
        }
    
    }

    
}

//
//  Deck.swift
//  CardGame
//
//  Created by Hatchell, Kadin on 10/31/16.
//  Copyright © 2016 Hatchell, Kadin. All rights reserved.
//

import Foundation;

class Deck
{
    lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        //Creates a temp array to hold card objs.
        var tempDeck = [Card]()
        
        //Repeat until there are no cards in self.cards
        while self.cards.count > 0
        {
            //Chooses a valid random index in the range of 0 ... counts.count
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            
            //Takes the card format spot fro the deck. The deck decreases count.
            let removedCard = self.cards.removeAtIndex(randomSpot)
            
            //Add the emoved card to the end of the temp deck.
            tempDeck.append(removedCard)
        }
        self.cards = tempDeck
    }
    func cutDeck() -> Void
    {
        
    }
    func drawCard() -> Card?
    {
        if self.cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = (Int)(arc4random() % (UInt32) (cards.count))
            return cards.removeAtIndex(randomIndex)
        }
        else
        {
            return nil
        }
    }
}

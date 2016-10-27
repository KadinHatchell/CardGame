//
//  PlayingCard.swift
//  CardGame
//
//  Created by Hatchell, Kadin on 10/25/16.
//  Copyright © 2016 Hatchell, Kadin. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    private var rank : Int
    {
        get
        {
            return self.rank
            
        }
        set(rank)
        {
            self.rank = rank
        }
    
    }
    
    private var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
        
    }
    
    private var color : UIColor
    {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    
    private var frontImage : UIImage
        {
        get
        {
            return self.frontImage
        }
        set(frontImage)
        {
            self.frontImage = frontImage
        }
    
    }
    
    override init()
    {
        super.init()
        frontImage = UIImage()
        color = UIColor()
        rank = 0
        suit = ""
        
    }
    
    override func toString() -> String
    {
        let facing : Bool
        if self.isUp()
        {
            facing = true
        }
        else
        {
            facing = false
        }
        
        let description = "Ths PlayingCard has a face value of \(rank) a color of \(color), the back ingame is \(self.getBackImage()) and is of suit \(suit) suit \(facing)"
        
        return description
    }
    
    func getRank()-> Int
    {
        return self.rank
    }
    
    func setRank(rank : Int)
    {
        self.rank = rank
    }
    
}

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
    internal var rank : Int
    internal var suit : String
    internal var color : UIColor
    internal var frontImage : UIImage
        
    override init()
    {
        super.init()
        frontImage = UIImage(named: "pcard")!
        color = UIColor.redColor()
        rank = 0
        suit = ""
        
    }
    
    init(withRank: Int, ofSuit: String)
    {
        super.init()
        frontImage = UIImage(named: "pcard")!
        color = UIColor.redColor()
        
        rank = withRank
        suit = ofSuit
        
        
    }
    
    override func toString() -> String
    {
        let facing : String
        if self.isUp()
        {
            facing = " is face up"
        }
        else
        {
            facing = " is face down"
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
    
    //The modifier 'class in fornt of the func mean that this method is visible
    // without creating an instance of the class in question.
    //This is a class method, not an instance method.
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func validSuits() -> [String]
    {
        return ["♥️","♠️","♦️","♣️"]
    }
    
    class func maxRank() -> Int
    {
     
        return validRanks().count - 1
    }
    
}

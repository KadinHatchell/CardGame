//
//  Card.swift
//  CardGame
//
//  Created by Hatchell, Kadin on 10/25/16.
//  Copyright © 2016 Hatchell, Kadin. All rights reserved.
//

import UIKit

class Card
{
    
    
    internal var backImage : UIImage
    internal var isFaceUp : Bool
    
    
    init()
    {
        isFaceUp = false
        backImage = UIImage(named: "pcard")!
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func setBackImage(newImage : UIImage)
    {
        backImage = newImage
        
    }
    
    func isUp() -> Bool
    {
        return isFaceUp
        
    }
    
    func setIsFacing(isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
}

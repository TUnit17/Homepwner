//
//  Item.swift
//  Homepwner
//
//  Created by Timothy Huang on 3/7/17.
//  Copyright © 2017 Timothy Huang. All rights reserved.
//

//import Foundation

import UIKit


/**
 
 Your table view will need some rows to display. Each row in the table view will display and item whuch will have information such as name, serial number, and value in dollars
 Notice that serialNumber is an optional String, necessary because and item may not have a serial number.
 None of the properties have a default value, you will need to give them values in a designated initializer
 
 
 
 
 **/

class Item: NSObject
{
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: NSDate
    
    
    
    /**
     
     Classes can have 2 kinds of initializers: designated initializers and convenience intializers
     designated initializer = primary initializer, ensures that all properties in the class have a value. Once it ensures that, it calls on its superclass (if it has one)
     
     init is the designated initializer
     
     
     **/
    init(name: String, serialNumber: String?, valueInDollars: Int)
    {
        self.name = name
        self.serialNumber = serialNumber
        self.valueInDollars = valueInDollars
        self.dateCreated = NSDate()
        super.init()
    }
    
    
    
    // convenience initializer = always calls another initializer in the same class
    
    // convenience init will create a randomly generated item
    
    convenience init(random: Bool = false)
    {
        if random
        {
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Stork", "Mac"]
            
            // the arc4random_uniform function returns a random value between 0, inclusive, and the value passed in the argument, exclusive
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = NSUUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
        
        
        } // end if
        
        else
        {
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
    
    } // end convenience init
    


} // end class

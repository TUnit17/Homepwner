//
//  ItemStore.swift
//  Homepwner
//
//  Created by Timothy Huang on 3/7/17.
//  Copyright © 2017 Timothy Huang. All rights reserved.
//

import  UIKit




/**
If an object wants to see all of the items, it will ask the ItemStore for the array that contains them.
In future chapters, the ItemStore will be responsible for performing operations on the array, like reordering, adding, and removing items.
It will also be responsible for saving and loading the items from disk
 
ItemStore is a Swift base class and does not inherit from any other class.
Unlike the Item class, ItemStore does not require and of the behavior that NSObject affords 
 
The ItemsViewController will call a method on ItemStore when it wants a new Item to be created.
ItemStore will create the object and add it to an array of instances of Item.
 
 
 
 **/



class ItemStore
{
    // property to store the list of Items
    var allItems = [Item]()

    func createItem() -> Item
    {
        let newItem = Item(random: true)
        allItems.append(newItem)
        
        return newItem
    
    }
    
    
    init()
    {
        for _ in 0..<5
        {
            createItem()
        }
    }
} // end class

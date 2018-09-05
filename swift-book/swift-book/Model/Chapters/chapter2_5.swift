//
//  chapter2_5.swift
//  swift-book
//
//  Created by Carlos Arenas on 9/4/18.
//  Copyright © 2018 Carlos Arenas. All rights reserved.
//

import Foundation

class chapter2_5 {
    
    // MARK: - CHAPTER: CONTROL FLOW
    
    func execute() {
        
        // Swift provides a variety of control flow statemnets: while, if, guard, break, continue, for-in
        
        // Swift's 'switch' statement is considerably more powerful than its counterpart in many C-like languages. Cases
        // can match many different patterns, including interval matches, tuples, and casts to a specific type. Matched
        // values in a 'switch' case can be bound to temporary constant or variables for use within the cas's body, and
        // complex matching conditions can be expressed with a 'where' clause for each case.
        
        // MARK: - FOR-IN LOOP
        // You use the for-in loop to iterate over a sequence, such as items in a array, ranges of numbers, or characters
        // in a string.
        let names = ["Anna", "Alex", "Brian", "Jack"]
        for name in names {
            print("Hello \(name)!")
        }
        
        // Iterating over a dictionary to access its key-value pairs.
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs {
            print("\(animalName)s have \(legCount) legs")
        }
        
        // The contents of a Dicationary are inherently unordered, and iterating over them does not guarantee the order
        // in which they will be retrieved. In particular, the order you insert items into a Dictionary doesn't define
        // the oreder thye are iterated.
        
        // For-in loop with numeric ranges
        // The sequence being iterated over is a range of numbers from 1 to 5, inclusive, as indicated by the user of the
        // closed range operator (...)
        // 'index' is a constant whose value is automarically set a the start of each interation loop. As such, 'index'
        // does not have to be declared before it is used. It is implicitly declared simply by its inclusion in the loop
        // declaration, without the need for a let declaration keyword.
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
    }
}
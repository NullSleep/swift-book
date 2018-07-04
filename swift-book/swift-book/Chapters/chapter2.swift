//
//  chapter2.swift
//  swift-book
//
//  Created by Carlos Arenas on 7/3/18.
//  Copyright © 2018 Carlos Arenas. All rights reserved.
//

import Foundation

class chapter2 {
    // MARK: - General notes
    
    // 4 Ways of initializing an empty array in Swift:
    // - var arr = [Int]() // Shorthantd Syntax
    // - var arr = Array<Int>() // Array Initializer
    // - var arr:[Int] = [] // Array with an array literal
    // - var arr:Array<Int> = []
    
    // Tuples enable to create and pass around groupings of values. You can use a tuple  to return multiple
    // values from a function as a single compund value.
    
    // Swift introduces optional types, which handle the absence of a value. Optionals say either "there is a value, and
    // it equals x" or "there isn't a value at all". Using optional is similar to using nil pointers in Obj-C but
    // they work for any type, not just classes. Not only are optionals safer and more expressive than nil pointer in
    // Obj-C they are at the heart of many Swift's most powerful features
    
    // Swift is a 'type-safe' language, which means the language helps you to be clear about the types of values your code
    // can work with. If part of your code expects a String, type safety prevents you from passing it an Int by mistake.
    // Likewise, type safety prevents you from accidentally passing an optional String to a piece of code that expect an
    // nonoptional string.
    
    // MARK: - Sub Chapter: The Basics
    
    func execute() {
        
        // Constants
        let maxNumberOfLoginsAttempts = 10
        print(maxNumberOfLoginsAttempts)
        
        // Variables
        var currentLoginAttempt = 0
        currentLoginAttempt = 666
        print(currentLoginAttempt)
    }
}

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
        
        var x = 3.0, y = 0.14, z = 0.15
        x += y + z
        print(String(x))
        
        // Type Annotations
        // Type annotations can be provided when a constant or variable is declared to be clear about the kind of vlaues
        // the constant or variable can sotre. The colon (:) means '... of type ...'
        var welcomeMessage: String
        welcomeMessage = "Consentiousness is the one-trait-to-rule-them-all in terms of future success, both career wise and personal. 'Efficient, organized, neat, systematic, committed and always on top of everything.'"
        print(welcomeMessage)
        
        var red, green, blue: Double
        red = 65.8
        green = 24.3
        blue = 98.0
        print("RGB: " + String(red+green+blue))
        
        // Naming Constants and Variables
        // Any constant or variable can be named using almost any Unicode character
        let π = 3.141559
        let 大和 = "倭国"
        let 💁👌🎍😍 = "Happy Happy Joy Joy"
        print(String(π) + " " + 大和 + " " + 💁👌🎍😍)
        
        var friendlyWelcome = "You must stash the surplus. There is no need to spend on outside things."
        print(friendlyWelcome)
        friendlyWelcome = "Keep to yourself, be the absolute best, don’t mix life with work, be funny, un-afraid, humble, train yourself in your free time."
        print(friendlyWelcome)
        
        // Printing Constants and Variables
        // The print(_:separator:terminator:) function is a global function that prints one or more values to an
        // appropiate output. The 'separator' and 'terminator' parameters have default values and can be omitted.
        // By default the function terminates the line it prints by adding a line break.
        // Printing a value with a line break after it
        print("Nothing worth having comes easy.", terminator: "")
    }
}

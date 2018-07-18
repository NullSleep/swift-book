//
//  chapter2_2.swift
//  swift-book
//
//  Created by Carlos Arenas on 7/16/18.
//  Copyright © 2018 Carlos Arenas. All rights reserved.
//

import Foundation

class chapter2_2 {
    
    // MARK: - SUB CHAPTER: BASIC OPERATORS
    
    // An operator is a special symbol or phrase that is used to check, change or combine values.
    
    func execute() {
        
        // ** Terminology **
        // · Unary - Operates on a single target: -a, !b, c!
        // · Binary - Operates on two targets: 2 + 3
        // · Ternary - Operates on three targets. Swift has only one ternary operator: a ? b : c
        
        // ** Assignment Operator **
        
        let b = 10
        var a = 5
        a = b
        print(a)
        
        let (x, y) = (1, 2)
        print((x, y))
        print("\n---\n")
        
        // ** Arithmetic Operators **
        print(1 + 2)
        print(5 - 3)
        print(2 * 3)
        print(10.0 / 2.5)
        
        // Unlike arithmetic operators in C and Obj-C, the Swift arithmetic operatos do not allow values to overflow
        // by default.
        
        // String concatenation
        print("One of the best ways to find happiness and success in life is to strip" + " away the unnecessary things and focus only on what is needed.")
        
        // ** Remainder operator **
        // The reminder operator (a % b) works out how many multiples of b will fit inside a and returns the the value
        // that is left over (known as the remainder)
        // The reminder operator (%) is also knwon as a modulo operator in other languages. However, its behavior in Swift
        // for negative numbers means that it is, strictly speaking, a remainder rather than a modulo operator.
    }
}

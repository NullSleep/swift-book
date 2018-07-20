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
        print("\n---\n")
        
        // ** Remainder operator **
        // The reminder operator (a % b) works out how many multiples of b will fit inside a and returns the the value
        // that is left over (known as the remainder)
        // The reminder operator (%) is also knwon as a modulo operator in other languages. However, its behavior in Swift
        // for negative numbers means that it is, strictly speaking, a remainder rather than a modulo operator.
        
        // To calculate 9 % 4 :
        // [      4     ][    4     ][  1  ]
        //  1  2   3   4  5  6  7  8    9
        // Two 4s fit inside 9 and the reminder is 1
        print(9 % 4)
        print("\n---\n")
        
        // To determine the answer for a % b, the % operator calculates the following equation and returns the remainder
        // as its output:
        // a = (b x some multiplier) + remainder
        // where some multiplier is the largers number of multiples of b that will fit inside a
        // Inserting 9 and 4 into this equation yields: 9 = (4x2) + 1
        
        // The reminder of a negative value
        // The sign of b is ignored for negative values pof b. This means that a % b and a % -b always gives the
        // same answer.
        // -9 % 4 // -9 = (4 * -2) + -1
        
        // ** Unary Minus Operator **
        let three = 3
        let minusThree = -three
        let plustThree = -minusThree
        print(plustThree)
        
        // ** Unary Plus Operator **
        // The unary operator doesn't do anything but it is provided for symmetry with the minus operator
        let minusSix = -6
        let alsoMinusSix = +minusSix
        print(alsoMinusSix)
        print("\n---\n")
        
        // ** Compound Assigment Operators **
        // a += 2 is shorthand for a = a + 2
        var ax = 1
        ax += 2
        print(ax)
        print("\n---\n")
        
        // ** Comparison Operators **
        print(1 == 1)
        print(2 != 1)
        print(2 > 1)
        print(1 < 2)
        print(1 >= 1)
        print(2 <= 1)
        
        let name = "world"
        if name == "world" {
            print("Rule your mind or it will rule you” ~ Buddha")
        } else {
            print("If you want to grow up, you have to stop apologizing.")
        }
        
        // Tuple that have the same number of values can be compared as long as each of the values in the tuple can be
        // compared. For example both Int and String can be compared, which means tuples of the type (Int, String)
        // can be comapted. In contrast Bool can't be compared, which means tuples that contain a Boolean value
        // can't be compared.
        print((1, "zebra") < (2, "apple"))
    }
}

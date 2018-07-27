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
        print((1, "zebra") < (2, "apple")) // true because 1 is less than 2; "zebra" and "apple" are not compared
        print((3, "apple") < (3, "bird")) // true because 3 is equal to 3, and "apple" is less than "bird"
        print((4, "dog") == (4, "dog")) // true because 4 is equal 4 and "dog" is equal to "dog"
    
        // Swift can only operate on tuples with fewer than seven elements. To compare tuples with seven or more
        // elements, you must implement the comparison operators yourself.
        print("\n---\n")
        
        // ** Ternary Conditional Operator **
        // The ternary conditional operator is a special operator with three parts, which takes the form
        // question ? answer1 : answer 2
        // It is a shortcut for evaluating one of two expressions based on whether 'question' is true or false.
        // If 'question' is true, it evaluates answer1 and returns its value; otherwise, it evaluates answer2 and
        // returns it value; otherwise, it evaluates answer2 and returns its value.
        
        // The ternary conditional operator is shorthand for the code below
//        if question {
//            answer1
//        } else {
//            answer2
//        }
        
        // Example that calculates the height for a table row. The row height should be 50 points taller than the
        // content height for the table row. The row height should be 50 point taller than the content height if the
        // row has a header, and 20 points taller if the row doesn't have a header:
        let contentHeight = 40
        let hasHeader = true
        let rowHeight = contentHeight + (hasHeader ? 50 : 20)
        print(rowHeight)
        
        // The preceding example is shorthand for the code below:
        let contentHeightL = 40
        let hasHeaderL = someBoolean()
        var rowHeightL: Int
        if hasHeaderL {
            rowHeightL = contentHeightL + 50
        }  else {
            rowHeightL = contentHeightL + 20
        }
        print(rowHeightL)
        
        // The ternary conditional is an efficeint shorthand for deciding which of two expressions to consider. But the
        // conciseness of the operator can lead to hard to read code if overused. Avoid combining multiple instances of
        // the ternary conditional operator into one compound statement.
        print("\n---\n")
        
        // ** Nil-Coalescing Operator **
        // The nil-coalescing operator (a ?? b) unwraps an optional 'a' if it contains a value, or returns a default
        // value 'b' if 'a' is nil. The expression 'a' is always of an optional type. The expresion 'b' must match
        // the type that is stored inside 'a'.
        // The nil-coalescing operator is shorthand for the code below
        // a != nil ? a! : b
        // The nil-coalescing operator provides a more elegant way to encapsulate this conditional checking and
        // unwrapping in a concise and readable form.
        
        let defaultColorName = "red"
        var userDefinedColorName: String? // defaults to nil
        var colorNameToUse = userDefinedColorName ?? defaultColorName
        print(colorNameToUse)
        userDefinedColorName = ""; colorNameToUse = "" // Added only to avoid the warning
        // If userDefinedColorName where not nil by default userDefinedColorName would be set to userDefinedColorName
        print("\n---\n")
        
        // ** Range Operators **
        // Swift includes serveral range operators which are shortcuts for expressing a range of values.
        
        // * Closed range operator *
        // The closed range operator (a..b) defines a range that runs from a to b, and includes the values a and b. The
        // value of a must not be greater than b.
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        print("\n---\n")
        
        // * Half Range Operator *
        // The half range operator (a..<b) defines a range that runs from a to b, but does not include b. The is called
        // half open because it contains its first value, but not the final value.
        // Half open ranges are useful when working with zero based lists such as arrays, where it is useful to count up
        // to (but no including) the leng of the list.
        let names = ["Anna", "Alex", "Brian", "Jack"]
        let count = names.count
        for i in 0..<count {
            print("Person \(i + 1) is called \(names[i])")
        }
        print("\n---\n")
        
        // * One-Sided Ranges *
        // The closed range operator has an alternate form for ranges that continue as far as possible in one direction,
        // for example, a range that inclides all the elements of an array, from index 2 to the end of the array.
        for name in names[2...] {
            print(name)
        }
        
        for name in names[...2] {
            print(name)
        }
        
        // The half open range operator also has a one-sided form that is written with only its final value.
        for name in names[..<2] {
            print(name)
        }
        
        let range = ...5
        print(range.contains(7))
        print(range.contains(4))
        print(range.contains(-1))
        print("\n---\n")
        
        // ** Logical Operators **
        // Logical operators modify or combine the Boolean logic values true and false. Swift supports the three standard
        // logical operator found in C-based languages:
        // Logical NOT (!a)
        // Logical AND (a && b)
        // Logical OR (a || b)
        
        // * Logical NOT Operator *
        // (!a) inverts a Boolean value (true becomes false, and false becomes true)
        let allowedEntry = false
        if !allowedEntry { // If not allowedEntrey
            print("ACCESS DENIED")
        }
        // As in this example, careful choice of Boolean constant and variable names can help to keep code readable and
        // concise, while avoiding double negatives or confusing logic statements.
        
        // * Logical AND Operator *
        // The logical AND operator (a && b) creates logical expression where both values must be true for the overall
        // expression to also be true. If either value is false, the overall expression will also be false. In fact,
        // if the first value is false, the second value won't even be evaluated. This is known as shot-circuit evaluation.
        let enteredDoorCode = true
        let passedRetinaScan = false
        if enteredDoorCode && passedRetinaScan {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        
        // * Logical OR Operator *
        // Use it to create logical expression in which only one of the two values has to be true for the overall
        // expression to be true. If the left side of a Logical OR expresion is true the right side is not evaluated,
        // because it cannot change the outcome of the overall expression.
        let hasDoorKey = false
        let knowsOverridePassword = true
        if hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        
        // * Combining Logical Operators *
        // If we've entered trhe correct door code and passed the retina scan, or if we have a valid door key,
        // or if we know rhe emergency override password, then allow access.
        if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        
        // * Explicit Parentheses *
        // Readability is always preferred over brevity.
        if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        
        // ** String and Characters **
        // Series of characters and its contents can be accessed in various ways, including as a collection of Character
        // values.
    }
    
    func someBoolean() -> Bool {
        return true
    }
}

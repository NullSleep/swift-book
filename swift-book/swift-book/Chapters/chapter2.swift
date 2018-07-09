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
        print("***** there wasn't a line break")
        
        // Swift uses string interpolation tio incliude the name of a constant or variable as a placeholder in a longer
        // string, and to prompt Swift to replace it with the current value of that constant or variable.
        print("This is an awesome thought: \(friendlyWelcome)")
        
        // Comments.
        // Swift supports multiline comments that nested in other multiline comments.
        /* If someone offers you an amazing opportunity and you are not sure you can do it, say yes - then do it later.
            /* Si no cobro lo justo no solo devaluó mi trabajo si no el de todos mis colegas. */
            And only by admitting what we are, we get what we want. */
        
        // Semicolons (;) are not required in Swift but they can be used to write multiple separate statements on
        // a single line
        let bear = "🐻"; print(bear)
        
        // Integers are whole numbers with no fractional component. Interger are either signed (positeve, zero,
        // or negative) or unsigned (positive or zero)
        // Integars can be 8, 16, 32 and 64 bit. 8 bit unsigned integers are of type UInt8 and 32 bit singed integers
        // is of type Int32
        let minValue = UInt8.min
        print(minValue)
        let maxValue = UInt32.max
        print(maxValue)
        
        // Int and UInt is used when an specific size is not needed. The Int size has the same size as the current platform's
        // native word size:
        // - On a 32 bit platform, Int and UInt is the same size as Int32 - UInt32
        // - On a 64 bit platform, Int and UInt is the same size as Int64 - UInt64
        // UInt should only be used when an unsiged integer is specifically need. If is not needed Int is prefered
        // even if the values stored are known to be non-negative.
        
        // Floating-point numbers are numbers with a fractional component (3.141559, 0.1, -356.75)
        // Swift provides two signed floating-point number types:
        // Double represents a 64-bit floating-point number. Has the precision of at least 15 decimal digits
        // Float represents a 32-bit floating-point number. Has the precision of at least 6 decimal digits.
        
        // Type Safety and Type Inference
        // Swift is a type-sage language meaning that it encourages you to be clear about the types the code can work with.
        // If part of you code expects a String, you can't pass in an Int by mistake.
        // Swift inferes values using type inference to work out the appropiate type.
        // Swift always chooses Double (rahter than Float) when inferring the type of floating-point numbers.
        
        // Numeric Literals
        let decimalInteger = 17
        print(decimalInteger)
        let binaryInteger = 0b10001 // Binaries need a 0b prefix
        print(binaryInteger)
        let octalInteger = 0o21 // Octal uses a 0o prefix
        print(octalInteger)
        let hexadecimalInteger = 0x11 // Hexadecimal uses a 0x prefix
        print(hexadecimalInteger)
        
        // all of the floating-point leterals have a decimal value of 12.875
        let decimalDouble = 12.875
        print(decimalDouble)
        let exponentDouble = 12.21875e1
        print(exponentDouble)
        let hexadecimalDouble = 0xC.3p0
        print(hexadecimalDouble)
        
        // Thanks to numerical literals both integers and floats can be padded with extra zeros and can contain
        // underscores to help with readability.
        let paddedDouble = 0000123.456
        print(paddedDouble)
        let oneMillion = 1_000_000
        print(oneMillion)
        let justOverOneMillion = 1_000_000.000_000_1
        print(justOverOneMillion)
        
        // Numeric Type Conversion
        
        // UInt8 cannot be store negaive numbers and so this will report an error
        //let cannotBeNegative: UInt8 = -1
        // Int8 cannot store a number larger than its maximum value and therefor this will report an error
        //let tooBig: Int8 = Int8.max + 1
        
        // Conversions to operate with values of the same type.
        let twoThousand: UInt16 = 2_000
        let one: UInt8 = 1
        let twoThousandAndOne = twoThousand + UInt16(one)
        print(twoThousandAndOne)
        
        // Integer and Floating-Point Conversion
        let three = 3
        let pointOneFourOneFiveNine = 0.14159
        let pi = Double(three) + pointOneFourOneFiveNine // pi is inferred to be of type Double
        print(pi)
        
        let integerPi = Int(pi)
        print(integerPi) // it is inferred integerPi is of type Int
        
        
    }
}

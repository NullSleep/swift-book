//
//  chapter2.swift
//  swift-book
//
//  Created by Carlos Arenas on 7/3/18.
//  Copyright © 2018 Carlos Arenas. All rights reserved.
//

import Foundation

class chapter2_1 {
    
    // MARK: - GENERAL NOTES
    
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
    
    // MARK: - CHAPTER: THE BASICS
    
    func execute() {
        
        // MARK: - CONSTANTS
        let maxNumberOfLoginsAttempts = 10
        print(maxNumberOfLoginsAttempts)
        
        // MARK: - VARIABLES
        var currentLoginAttempt = 0
        currentLoginAttempt = 666
        print(currentLoginAttempt)
        print("\n---\n")
        
        var x = 3.0, y = 0.14, z = 0.15
        x += y + z
        print(String(x))
        
        // MARK: - TYPE ANNOTATIONS
        // Type annotations can be provided when a constant or variable is declared to be clear about the kind of vlaues
        // the constant or variable can sotre. The colon (:) means '... of type ...'
        var welcomeMessage: String
        welcomeMessage = "AUTHENTICATION: The ability of each party in a transaction to verify the identity of the other parties.'"
        print(welcomeMessage)
        print("\n---\n")
        
        var red, green, blue: Double
        red = 65.8
        green = 24.3
        blue = 98.0
        print("RGB: " + String(red+green+blue))
        print("\n---\n")
        
        // MARK: - NAMING CONSTANTS AND VARIABLES
        // Any constant or variable can be named using almost any Unicode character
        let π = 3.141559
        let 大和 = "倭国"
        let 💁👌🎍😍 = "Happy Happy Joy Joy"
        print(String(π) + " " + 大和 + " " + 💁👌🎍😍)
        print("\n---\n")
        
        var friendlyWelcome = "AUDIT: An independent examination of software or software documentation to assess compliance with predetermined criteria."
        print(friendlyWelcome)
        friendlyWelcome = "ATTRIBUTE: A piece of information describing part of a particular entity."
        print(friendlyWelcome)
        print("\n---\n")
        
        // MARK: - Printing Constants and Variables
        // The print(_:separator:terminator:) function is a global function that prints one or more values to an
        // appropiate output. The 'separator' and 'terminator' parameters have default values and can be omitted.
        // By default the function terminates the line it prints by adding a line break.
        // Printing a value with a line break after it
        print("Nothing worth having comes easy.", terminator: "")
        print("***** there wasn't a line break")
        print("\n---\n")
        
        // Swift uses string interpolation tio incliude the name of a constant or variable as a placeholder in a longer
        // string, and to prompt Swift to replace it with the current value of that constant or variable.
        print("This is an awesome thought: \(friendlyWelcome)")
        print("\n---\n")
        
        // MARK: Comments
        // Swift supports multiline comments that nested in other multiline comments.
        /* If someone offers you an amazing opportunity and you are not sure you can do it, say yes - then do it later.
            /* Si no cobro lo justo no solo devaluó mi trabajo si no el de todos mis colegas. */
            And only by admitting what we are, we get what we want. */
        
        // Semicolons (;) are not required in Swift but they can be used to write multiple separate statements on
        // a single line
        let bear = "🐻"; print(bear)
        print("\n---\n")
        
        // Integers are whole numbers with no fractional component. Interger are either signed (positeve, zero,
        // or negative) or unsigned (positive or zero)
        // Integars can be 8, 16, 32 and 64 bit. 8 bit unsigned integers are of type UInt8 and 32 bit singed integers
        // is of type Int32
        let minValue = UInt8.min
        print(minValue)
        let maxValue = UInt32.max
        print(maxValue)
        print("\n---\n")
        
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
        
        // ** Type Safety and Type Inference **
        // Swift is a type-sage language meaning that it encourages you to be clear about the types the code can work with.
        // If part of you code expects a String, you can't pass in an Int by mistake.
        // Swift inferes values using type inference to work out the appropiate type.
        // Swift always chooses Double (rahter than Float) when inferring the type of floating-point numbers.
        
        // MARK: - Numeric Literals
        let decimalInteger = 17
        print(decimalInteger)
        let binaryInteger = 0b10001 // Binaries need a 0b prefix
        print(binaryInteger)
        let octalInteger = 0o21 // Octal uses a 0o prefix
        print(octalInteger)
        let hexadecimalInteger = 0x11 // Hexadecimal uses a 0x prefix
        print(hexadecimalInteger)
        print("\n---\n")
        
        // all of the floating-point leterals have a decimal value of 12.875
        let decimalDouble = 12.875
        print(decimalDouble)
        let exponentDouble = 12.21875e1
        print(exponentDouble)
        let hexadecimalDouble = 0xC.3p0
        print(hexadecimalDouble)
        print("\n---\n")
        
        // Thanks to numerical literals both integers and floats can be padded with extra zeros and can contain
        // underscores to help with readability.
        let paddedDouble = 0000123.456
        print(paddedDouble)
        let oneMillion = 1_000_000
        print(oneMillion)
        let justOverOneMillion = 1_000_000.000_000_1
        print(justOverOneMillion)
        print("\n---\n")
        
        // MARK: - Numeric Type Conversion
        // UInt8 cannot be store negaive numbers and so this will report an error
        // let cannotBeNegative: UInt8 = -1
        // Int8 cannot store a number larger than its maximum value and therefor this will report an error
        // let tooBig: Int8 = Int8.max + 1
        
        // Conversions to operate with values of the same type.
        let twoThousand: UInt16 = 2_000
        let one: UInt8 = 1
        let twoThousandAndOne = twoThousand + UInt16(one)
        print(twoThousandAndOne)
        print("\n---\n")
        
        // Integer and Floating-Point Conversion
        let three = 3
        let pointOneFourOneFiveNine = 0.14159
        let pi = Double(three) + pointOneFourOneFiveNine // pi is inferred to be of type Double
        print(pi)
        
        let integerPi = Int(pi)
        print(integerPi) // it is inferred integerPi is of type Int
        print("\n---\n")
        
        // MARK: - Type Aliases
        // Type aliases define an alternative name for an existing type. They are useful to refer to an exisiting
        // type by a name that is contextually more appropiate, such as when working with data of a specific size
        // form an external source
        typealias AudioSample = UInt16
        let maxAmplitudeFound = AudioSample.min
        print(maxAmplitudeFound)
        print("\n---\n")
        
        // MARK: - Booleans
        // Both values are infered as Bool from the fact taht they were initialized with Boolean literal values.
        let orangesAreOrange = true
        print(orangesAreOrange)
        var turnipsAreDelicious = false
        print(turnipsAreDelicious)
        
        turnipsAreDelicious = true
        if turnipsAreDelicious {
            print("Never forget what you are. The rest of the world will not. Wear it like an amor, and it can never be used to hurt you.")
        } else {
            // print("Virtue is in the middle of two extremes") // Warning because this will never executed.
        }
        
        let i = 1
        // This will not compile because i is not a Boolean
        //if i {
        //}
        // The result of the comparison i == 1 is of type Bool and so it passes the type-check
        if i == 1 {
            print("All is paradox. For every idea, there is an equally valid “anti-idea”. All is everything. All is nothing in the end… Paradox is everything.")
        }
        print("\n---\n")
        
        // ** Tuples **
        // Tuples group multiple values into a sigle compound value. The values within a tuple can be of any type and
        // do not have to be of the same type as each other.
        // Tuples can have any permutation of types and can contains as many different types as required (Int, Int, Int),
        // (String, Bool), etc
        let http404Error = (404, "Not Found.") // A tuple of type (Int, String)
        print(http404Error)
        
        // A tuple's contents can be decomposed into separate constants or variables
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        print("The status message is \(statusMessage)")
        
        // Values of the tuple can be ignored with an underscore (_) when decomposing the tuple
        let (justTheStatusCode, _) = http404Error
        print("Just the status \(justTheStatusCode)")
        
        // Also individual element values on a tuple can be accessed using index
        print("The status code using index is \(http404Error.0)")
        print("The status code message index is \(http404Error.1)")
        
        // If the elements in a tuple are named they can be used using those names
        let http200Status = (statusCode: 200, description: "OK")
        print("The status code is \(http200Status.statusCode)")
        print("The status message is \(http200Status.description)")
        
        // Tuples are particularly useful as the return values of functions. They are not suited to the creation of
        // complex data structures. If the data structure is likely to persist beyond a temporary scope, modeling it
        // as class or a strucutre is much prefered.
        
        // MARK: - Optionals
        // Used when a value may be absent. An optional represent two  poaibilities: Either there is a value,
        // and the optional can be unwrapped to acces the value, or there ins't a value at all.
        
        let possibleNumber = "123"
        // convertedNumber is infered to be of type 'Int?' or 'optional Int' because the initializer might fail
        // since not all string can be converted to Int. There might be an Int value or no value at all.
        let convertedNumber = Int(possibleNumber)
        print(convertedNumber ?? "")
        print("\n---\n")
        
        // MARK: - nil
        // Variables can be set to a valueless state by assigning it the special value nil
        // nil cannot be used with nonoptional constants and variables. If a constant or variable in the code needs to
        // work with the absence of a value under certain conditions, always declare it as an optional value of the
        // appropiate type.
        var serverResponseCode: Int? = 404
        serverResponseCode = nil
        print(serverResponseCode ?? "Nil value therefore it prints this default value")
        print("\n---\n")
        
        // An optional vraible definied without providing a default value, the variable is automatically set to nil
        // surveryAnswer is automatically set to nil. It can't be printed or used until it is initialized
        // let surveyAnswer: String?
        
        // Swift's nil is not the same as nil in Obj-C. In Obj-C nil is a pointer to a nonexistent object. In Swift,
        // nil is not a pointer it is the absence of a value of a certain type. Optionals of any type can be set to nil,
        // not just object types.
        
        // If statements and forced unwrapping
        // if statements can be used to find wheter and optional contains a value by comparing the optional against nil.
        if convertedNumber != nil {
            // Forced unwrapping
            // If there is certanty thate optional does contain a value it can be used by adding an exclamation mark (!)
            // To the end of the optional's name. The exclamation makr effectively says "I know that this optional
            // definitely has a value, please use it"
            print("convertedNumber contains some integer value of \(convertedNumber!)")
        }
        print("\n---\n")
        
        // MARK: - Optional Binding
        // It is used to find out wheter an optional contains a value, and if so, to make that value available as a
        // temporary constant or variable. Optional binding can be used with if and while statements to check for a value
        // inside an optional, and to extract that value into a constant or a variable, as part of a single action.
        if let actualNumber = Int(possibleNumber) {
            print("\(possibleNumber) has an integer value of \(actualNumber)")
        } else {
            print("\(possibleNumber) couldn't be be converted to an integer")
        }
        
        // Multiple optional bindings and Boolean conditions in a single statements can be added (they must be separarated
        // by commas) If any of the values in the optional bindings are nil or any Boolean condition evaluates to false,
        // the whole if statements is considered false.
        if let first = Int("4"), let second = Int("666"), first < second && second < 1000 {
            print("\(first) < \(second) < 1000")
        }
        
        // Same example old fashioned way (much larger)
        if let first = Int("4") {
            if let second = Int("666") {
                if first < second && second < 1000 {
                    print("\(first) < \(second) < 1000")
                }
            }
        }
        
        // IMPORTANT: Constants and variables created with optional binding in an if statement are available only
        // within the body of the if statement. In contrast, the constants and variables created with a 'guard'
        // statement are available in the lines of code that follow the guard statement.
        print("\n---\n")
        
        // MARK: - Implicitly Unwrapped Optionals
        // Optionals indicate if a constant or variable is allowed to have a "no value". Optionals can be checked with
        // an 'if' statement to sse if a value exists, and can be conditionally unwrapped with optional binding to
        // access the optional's value if it does exist.
        // Sometimes it is clear from a program's structure that an optional will always have a value, after that value
        // is first set. In this cases it is useful to remove the need to check and unwrap the optional's valye every
        // time it is accessed, because it can be safely assumed to have a value all of the time.
        let possibleString: String? = "An optional string - BANDWIDTH: The capacity of a communications channel."
        let forcedString: String = possibleString!
        print(forcedString)
        
        let assumedString: String! = "An implicitly unwrapped optional string -  CODE REVIEW: A meeting at which source code is presented for review, comment, or approval."
        let implicitString: String = assumedString
        print(implicitString)
        
        // Implicitly unwrapped optionals can be thought of as giving permission for the optional to be unwrapped
        // automatically whenever it is used. Rahter than placing an exclamation mark after the optional's name each time
        // it is used, the exclamation mark is placed afther optional's type when it is declatred.
        if assumedString != nil {
            print(assumedString)
        }
        
        // Implicitly unwrapped optionals can also be used with optional binding, to check and unwrap it's value in a
        // single statement
        if let definiteString = assumedString {
            print(definiteString)
        }
        print("\n---\n")
        
        // MARK: - Error Handling
        // Error hanlding, allows to determine the underlying case of failure, and, if necessary, to propagate
        // the error to another part of the program. When a function encounters an error condition, it throws an error.
        func canThrowAnError() throws {
            print("This function may or may not throw an error")
        }
        
        // Swift automatically propagates errors out of their current scope until they are handled by a catch clause
        do {
            // When a function that can throw an error is called the 'try' keyword is prepend to the expresion
            try canThrowAnError()
        } catch {
            print("An error was thrown")
        }
        
        // A 'do' statement creates a new containing scope, which allows error to be propagated to one or more catch
        // clauses.
//        func makeASandwich() throws {
//        }
//
//        func eatASandwich (){
//        }
//
//        do {
//            try makeASandwich()
//            eatASandwich()
//        } catch SandwichError.outOfCleanDishes {
//            washDishes()
//        } catch SandichError.outOfCleanDishes {
//            washDishes()
//        } catch SandichError.missingIngredients(let ingredients) {
//            buyGroceries(ingredients)
//        }
        print("\n---\n")
        
        // MARK: - Assertions and Preconditions
        // Assertions and preconditions are checks that happen at runtime. You use them to make sure an essential
        // condition is satisfied before executing any further code. If the Boolean condition in the assertion or
        // precondition evaluates to true, code execution continues as usual. If the condition evaluates to false
        // the current state of the program is invalid; code excution ends and the app is terminated
        //
        // Assertions and preconditions are used to express the assumptions and expectations that are made while coding
        // so they can be included as part of the code. Assertions help finding mistakes and incorrect assumptions
        // during development, and preconditions help detect issues in production. Thy can also be useful for documenting
        // the code.
        //
        // Using them to enforce valid data and state causes the app to terminate more predictably if an invalid state
        // occura, and helps make the problem easier to debug. Stopping the execution as soon as an invalid state is
        // detected also helps limit the damage caused by that invalid state.
        //
        // Assertions are only checked in debug builds, but preconditions are checked in both debug and production builds.
        // In production builds, the condition inside an assertion isn't evaluated. This means assertions can be
        // used freely during the development process without impacting the performance in production.
        print("\n---\n")
        
        // MARK: - Debugging with Assertiongs
        // 'assertion': assert(_:_:file:line) You pass this function an expression that evaluates to true or false
        // and a message to display if the result of the condition is false
        var age = -3
        age = 1 // Leave it as -3 to test the assertions
        
        // This assertion fails because -3 is not >= 0
        // Since it fails it's need to be commented otherwise the app crashes
//        assert(age >= 0, "Age can't be less than zero. - People will remember what you made them feel.")
        
        // Using the assertionFailure(_:file:line) functiom
        if age > 10 {
            print("ASSESSMENT: A formal examination of a deliverable, generally by a quality assurance reviewer, for the presence of a specific set of attributes and structural elements. An assessment is not an in-depth examination of content, as the content of a deliverable may be outside the reviewer’s domain of expertise.")
        } else if age > 0 {
            print("ASSUMPTION: A condition that is generally accepted as truth without proof or demonstration.")
        } else {
            assertionFailure("A person's age can't be less than zero.")
        }
        print("\n---\n")
        
        // MARK: - Enforcing Preconditions
        // Use a precondition whenever a condition has the potential to be false, but must be definitely be true fot your
        // code to continue exectuion. Use preconditions for example to check if a subscript is not our of bounds, or to
        // check that a function has been passed a valid value.
        var indice = 0
        indice = 1 // Leave it as 0 to test the precondition
        precondition(indice > 0, "Index must be greater than zero.")
    }
}

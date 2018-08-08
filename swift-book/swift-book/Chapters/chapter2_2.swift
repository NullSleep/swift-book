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
        print("\n---\n")
        
        // ** String and Characters **
        // Series of characters and its contents can be accessed in various ways, including as a collection of Character
        // values.
        // Swift String type is bridged with Foundation's NSString class. Foundation also extends String to expose
        // methods defined by NSString. This means, if you import Foundation, you can access those NSString methods on
        // String wihout casting.
        
        // * String Literals *
        // A string literal is a sequence of characters sorrounded by double quotes (").
        // Swift infers a type of String for the someString constant, becase it is initialized with a string literal value.
        let someString = "Some string literal value."
        print(someString)
        
        // For a string that spans several lines, use a multiline string literal (""")
        // Since it uses 3 double quotes (") we can use a single double quote inside. Multiline string literal also
        // includes spaces.
        let quotations = """

        "Most of the financial success is due to your personality and ability to communicate, negotiate and lead. Shockingly only very little is due to technical knowledge."

        "No man has the right to be an amateur in the matter of physical training. It is a shame for a man to grow old without seeing the beauty and strength of which his body is capable."

        “My formula for greatness in a human being is amor fati. That one wants nothing to be different., not forward, not backwards, not in all eternity, not nearly bear what is necessary, still less conceal it, but love it.”

        """
        print(quotations)
        
        // Comparing strings
        print(quotations == generateQuotation())
        
        // * Initializing an Empty String *
        // These two string are both empty, and are equivalent to each other.
        let emptyString = "" // Empty string literal
        print(emptyString)
        let anotherEmptyString = String() // Initializer syntax
        print(anotherEmptyString)
        
        if emptyString.isEmpty {
            print("Empty string - To play a wrong note is insignificant. To play without passion is inexcusable")
        }
        
        // * String Mutability *
        // Use var so the string can be modified
        var variableStirng = "Everything that is new is everything that is good. If that new thing is bad it’s good and if it’s good it’s good."
        variableStirng += " - The heart is great which shows moderation in the midst of prosperity."
        print(variableStirng)
        
        let constantString = "Confidence: Body language and competence in what you do."
        // Needs to be comented because this report a compile-time error: A constant string cannot be modified
//        constantString += "another string"
        print(constantString)
        
        // * String Are Value Types *
        // Swift String type is a value type. When creating a new String value, that String value is copied when it is
        // passed to a function or methods, or when it is assigned to a constant or variable. In each case, a new copy
        // of the exisiting String value is created, and the new copy is passed or assigned, no the original version.
    
        // Swift's copy by default String behaviour ensure that when a function or method passes you a String value,
        // it is clear that you own that exact String value, regardless of where it came from. You can be confident
        // that the string you passed will not be modified unless you modify it yourself.
        
        // * Working with Characters *
        // Individual Characters values for a String can be accessed by iterating over the string with a for-in loop:
        for character in "To do two things at once is to do neither ~ Publilius Syrus 😬" {
            print(character)
        }
        
        // Stand-alone Character constants or variables can be created. It has to be extrictly 1 character otherwise
        // it will report an error
        let exclamationMark: Character = "!"
        print(exclamationMark)
        
        // String values can be constructed by passing an array of Character values as an argument to its initializer
        let catCharacters: [Character] = ["C", "a", "t", "!", "😺"]
        let catSring = String(catCharacters)
        print(catSring)
        
        // * Concatenating Strings and Characters *
        let string1 = "In order to be irreplaceable, one must always be different"
        let string2 = "\n\nDon't make someone a priority, when they only make you an option"
        var bigString = string1 + string2
        print(bigString)
        
        let string3 = "\n\nMinimize your options to minimize the number of decision to take in the day and therefore the draining of will."
        bigString += string3
        print(bigString)
        
        let asterisk: Character = "*"
        bigString.append(asterisk)
        print(bigString)
        
        // String or Character can't be appended to an existing Character because a Character value must only contain a
        // single character.
        
        // * String Interpolation *
        // String interpolation is a way to construct a new String value from a mix of constants, variables, literals
        // and expressions by including their values inside a string literal. String interpolation can be used in both
        // single line and multiline string literals. Each item that you insert into the string literal is wrapped
        // in a pair of parentheses, prefixed by a backlash (\)
        let multiplier = 3
        let message = "\(multiplier) times 2*5 is \(Double(multiplier) * 2.5)"
        print(message)
        
        // * Unicode *
        // Unicode: International standard for enconding, representing, and processing text in different wirtting systems.
        // It enables to represent almost any character for any language in a standarized form, and to read and write
        // those chracters to and from an external soruce such as a text file or web page.
        // Swift native String type is built from Unicode Scalar values. A Unicode scalar is a unique 21-bit number
        // for a character or modifier. No all 21-bit Unicode scalars are assigned to a character, some schalar
        // are reserved for future assigment.
        
        // String literals cna include the following special characterts:
        // \0 null character
        // \\ backslash
        // \t horizontal tab
        // \n line feed
        // \r carriage return
        // \" double quote
        // \' double quote
        
        // An arbitrary Unicode scalar, written as \u{n}, where n is a 1-8 digit hexadecimal number with a value
        // equal to a valid Unicode code oint
        let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
        print(wiseWords)
        let dollarSign = "\u{24}"
        print(dollarSign)
        let blackHeart = "\u{2665}"
        print(blackHeart)
        let sparklingHeart = "\u{1F496}"
        print(sparklingHeart)
        
        // * Extended Grapheme Clusters *
        // Every instance of Swift's Character type represents a single extended grapheme cluster. An extended
        // grapheme cluster is a sequence of one or more Unicode scalars that (when combined) produce a single human-
        // readable character.
        
        // The letter é can be represented as the single Unicode scalar é (LATIN SMALL LETTER E WITH ACUTE, or U+00E9)
        // However, the same letter can also be represented as a pair of scalars, a standard letter e (LATIN SMALL
        // LETTER E, or U+0065), followed by the COMBINING ACUTE ACCENT scalar (U+0301)
        let eAcute: Character = "\u{E9}"
        print(eAcute)
        let combinedEAcute: Character = "\u{65}\u{301}"
        print(combinedEAcute)
        
        // Extended grapheme clusters are a flexible way to represent many complex script characters as a single value.
        // For example Hangul syllables from the Korean alpahbet can be repsented as either a precomposed or decompsed
        // sequence.
        let precomposed: Character = "\u{D55C}"
        print(precomposed)
        let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"
        print(decomposed)
        
        // Extended grapheme clusters enable scalars for enclosing marks (such as COMBINING ENCLOSING CIRCLE, or U+20DD)
        // to enclosed other Unicode scalars as part of a single Character value:
        let enclosedEAcute: Character = "\u{E9}\u{20DD}"
        print(enclosedEAcute)
        
        // Unicode scalars for regional indicator symbols can be combined in pairs to make a single Character value, such
        // as this combination of REGIONAL INDICATION SYMBOL LETTER U (U+1F1FA) and REGIONAL INDICATOR SYBOL LETTER S
        // (U+1F1F8)
        let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
        print(regionalIndicatorForUS)
        
        // * Counting Characeters *
        let unusualMenagerie = "Carpe Diem Baby 😬🔥💵"
        print("unusualMenagerie has \(unusualMenagerie.count) chracters")
        
        // Note that Swift's use of extended grapheme culsters for Character values means that string concatenation and
        // modification may not always affect a string's character count.
        var word = "cafe"
        // word.count = 4
        print("The number of characters in \(word) is \(word.count)")
        word += "\u{301}"
        // even thoud word is now café it still prints word.count = 4
        print("The number of characters in \(word) is \(word.count)")
        
        // Extended grapheme clusters can be composed of multiple Unicode scalars. This means that different characters,
        // and different representations of the same chracter, can require different amounts of memory to store. Because
        // of this, characters in Swift do not each take up the same amount of memory within a string's representation.
        // As a result, the number of characters in a string cannot be calculated without iterating through the string to
        // deteremine its extended grapheme cluster boundaries. If you are working with particularly long string values,
        // be aware that the count property muest iterate over the Unicode scalars in the entiner string in order to
        // determine the characters for that string.
        //
        // The count of the characters returned by the count porperty is not always the same as the lenght property
        // of an NSString that contains the same characters. The lenght of an NSString is based on the number of
        // 16-bit code units withing the string's UTF-16 representation and no the number of Unicode extended grapheme
        // clusters within the string.
        print("\n---\n")
        
        // ** Accessing and Modifying a String **
        
        // * String Indices *
        // Each String value has an associated index type, String.Index, which corresponds to the position of each
        // Character in the string.
        // Since different characters can require different amounts of memory to store, so in order to determine which
        // Character is at a particular position, you must iterate over each Unicode scalar from the start or end of
        // that String. For this reason, Swift string cannot be indexed by integer values.
        
        // Use the startIndex property to access the position of the first Character of a String. The endIndex property
        // is the position after the last character in a String. The endIndex property is the position after the last
        // character in a String. As a result, the endIndex property isn't a valid argument to a string's subscript. If
        // a String is empty, startIndex and endIndex are equal.
        
        // You access the indices before and after a five index using the index(before:) and index(after:) methods for
        // String. To access an index farther away from the given index, you can use the index(_:offsetBy:) method
        // instead of calling one of these methods multiple times.
        let greeting = "Our greatest fears lie in anticipation. Patience is the greatest of all virtues."
        print(greeting.startIndex)
        print(greeting[greeting.index(before: greeting.endIndex)])
        print(greeting[greeting.index(after: greeting.startIndex)])
        let index = greeting.index(greeting.startIndex, offsetBy: 13)
        print(greeting[index])
        
        // Attempting to access and index outisde of a string's range or a Character at an index outside of a string's
        // range will trigger a runtime error
//        print(greeting[greeting.endIndex]) // Error
//        print(greeting.index(after: greeting.endIndex)) // Error
        
        // Using the indices property to access all of the indices of individual characters in a string
        for index in greeting.indices {
            print("\(greeting[index]) ", terminator: "")
        }
        print("\n")
        
        // The startIndex and endIndex properties and the index(before:), index(after:) and index(_:offsetBy) mehtods can
        // be used on any type that conforms to the Collection protocol. String and collection types such as Array,
        // Dictionary and Set all conform to the Collection protocol.
        
        // * Inserting and Removing *
        var welcome = "The key to happiness and confidence is progress."
        welcome.insert("!", at: welcome.endIndex) // Insert(,) only inserts a Character
        print(welcome)
        welcome.insert(contentsOf: " ***", at: welcome.index(before: welcome.endIndex))
        print(welcome)
        
        // Removing strings
        welcome.remove(at: welcome.index(before: welcome.endIndex))
        print(welcome)
        let stringRange = welcome.index(welcome.endIndex, offsetBy: -5) ..< welcome.endIndex
        welcome.removeSubrange(stringRange)
        print(welcome)
        
        // insert(_:at:), insert(contentsOf:at:), remove(at:) and removeSubrange(_:) methods can be used on any type
        // that confroms to the RageReplaceableCollection protocol. This includes String, as well as collection types
        // such as Array, Dictionary and set.
        
        // * Substrings *
        // Substrings in Swift have most of the same methods as string, which means uou can work with substrings like
        // strings. Unlike string, substrings are used only for a short amount of time.
        let greetings = "Weakness of attitude becomes weakness of character"
        let indexg = greetings.index(of: "b") ?? greetings.endIndex
        let begining = greetings[..<indexg]
        print(begining)
        // Convert the result to a String for long-term storage
        let newString = String(begining)
        print(newString)
        
        // Like strings, each substring has a region of memmory where the chracters that make up the substring are stored.
        // The difference between strings and substrings is that, as a performance optimization, a substring can re-use
        // part of the memory that's used to store the original string, or part of the memory that's used to store another
        // substring. This performance optimization means you don't have to pay the performance cost of copying memory
        // until you modify either the string or substring. Substrings aren't suitable for long-term storage--because they
        // re-use the storage of the original string, the entire original string must be kept in memory as long as any
        // of its substrings are being used.
        
        // In the example above, greeting is a string, which means it has a region of memory where the charcaters that
        // make up the string are stored. Because beginning is a substring of greetings, it re-uses the memory thtat
        // greeting uses. In contrats, newString is a string--when it's created from the substring, it has its own storage.
        
        // ** Comparing Strings **
        let quotation1 = "The lion and tiger might be stronger, but the wolf does not perform in the circus."
        let quotation2 = "The lion and tiger might be stronger, but the wolf does not perform in the circus."
        if quotation1 == quotation2 {
            print("These two strings are considered equal")
        }
        
        // Two string values (or two Character values) are considered equal if they extended grapheme clusters are
        // canonically equivalent. Extended grapheme clusters are canonically equivalent if they have the same linguistic
        // meaning and appearance, even if they are composed from different Unicode scalars behind the scnees.
        
        // For example, LATIN SMALL LETTER E WITH ACUTE (U+00E9) is canonically equivalent to LATIN SMALL LETTER E
        // (u+0065) followed by COMBINING ACUTE ACCENT (U+0301). Both of these extended grapheme clusters are valid ways
        // to represent the character é, and so they are considered to be canonically equivalent:
    }
    
    func someBoolean() -> Bool {
        return true
    }
    
    func generateQuotation() -> String {
        // The lines in the indentation are ignored. But any extra spaces will appear.
        let quotation = """
            
            "Success is not about being intelligent or talented, is about having relentless focus, drive and pushing things forward."

            "The ability to express yourself very well, specially about technical issues is key."
            
                   They may forget what you said, but they will never forget how you made them feel.

        """
        print(quotation)
        return quotation
    }
}

//
//  chapter2_3.swift
//  swift-book
//
//  Created by Carlos Arenas on 8/9/18.
//  Copyright © 2018 Carlos Arenas. All rights reserved.
//

import Foundation

class chapter2_3 {
    // MARK: - SUB CHAPTER: STRINGS AND CHARACTERS
    
    // An operator is a special symbol or phrase that is used to check, change or combine values.
    
    func execute() {
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
        let eAcuteQuestion = "Voulez-vous un caf\u{E9}"
        let combinedEAcuteQuestion = "Voulez-vous un caf\u{E65}\u{301}"
        if eAcuteQuestion == combinedEAcuteQuestion {
            print("These two strings are considered equal")
        }
        
        // Conversely, LATIN CAPITAL LETTER A (U+0041), as used in English, is not equivalent to CYRILLIC CAPITAL LETTER A
        // (U+0410) as used in Russian. The characters are visually similar, but do not have the same lingustic meaning.
        let latinCapitalLetterA: Character = "\u{41}"
        let cyrillicCapitalLetterA: Character = "\u{0410}"
        if latinCapitalLetterA != cyrillicCapitalLetterA {
            print("These two characters are not equivalent.")
        }
        
        // String and character comparisons in Swift are not locale-sensitive.
        
        // * Prefix and Suffix Equiality *
        let multipleQuotes = [
            "Q1 Towering genius disdains a beaten path. It seeks regions hitherto unexplored. XXX",
            "Q1 The only true wisdom is in knowing you know nothing. Socrates VVV",
            "Q2 Kiss slowly, play hard, forgive quickly, take chances, give everything and have no regrets. XXX",
            "Q3 I don't believe in losses. I believe in lessons. XXX",
            "Q3 All is paradox. For every idea, there is an equally valid \"anti-idea\". All is everything. All is nothing in the end... Paradox is everything. VVV",
            "Q3 To be better necessarily means to be different. VVV",
            "Q4 If you tell the truth you don’t have to remember anything” ~ Mark Twain XXX",
            "Q4 Sincerity is everything. If you can fake that, you've got it made. XXX"
        ]
        
        // Using hasPrefix
        var quoteTypeCount = 0
        for q in multipleQuotes {
            if q.hasPrefix("Q1 ") {
                quoteTypeCount += 1
            }
        }
        print("There are \(quoteTypeCount) of quote type 1 (Q1)")
        
        // Using hasSufix
        var xCount = 0
        var oCount = 0
        for q in multipleQuotes {
            if q.hasSuffix("XXX") {
                xCount += 1
            } else if q.hasSuffix("VVV") {
                oCount += 1
            }
        }
        print("\(xCount) XXX quotes; \(oCount) VVV quotes")
        
        // The hasPrefix(_:) and hasSuffix(_:) methods perform a character-by-chracgter canonical equivalence comparison
        // betweeen the extended grapheme clusters in each string.
        
        // ** Unicode Representations of String **
        // When a Unicode string is written to a text file or some other storage, the Unicode scalars in that string
        // are encoded in one of several Unicode-defined encoding forms. Each form encodes the string in small chunks
        // known as code units. These include the UTF-8, UTF-16 and UTF32 encodings.
        
        // The following are examples of the different represnetations of the varialbe dogString which is made up of the
        // characters D, o, g, !! (Unicode scalar U+203C) and the 🐶 character (DOG FACE; or Unicode scalar U+1F436)
        let dogString = "Dog!!🐶"
        print(dogString)
        
        // * UTF-8 Representation *
        // You can access a UTF-8 representation of a String by iterating over its utf8 property. This property is of type
        // String.UTF8View, which is a collection of unsigned 8-bit (UInt8) values, one for each byte in the string's
        // UTF-8 representation
        
        // Character:           D (U+0044)  O (U+006F)  G (U+0067)  !! (U+203C)     🐶 (U+1F436)
        // UTF-8 Code Unit:     68          111         103         226 128 188     240 159 144 182
        // Position:            0           1           2           3   4   5       6   7   8   9
        for codeUnit in dogString.utf8 {
            print("\(codeUnit) ", terminator: "")
        }
        
        // In the example above, the first three decimal codeUnit values (68, 111, 103) represent the characters D, o, g,
        // whose UTF-8 representation is the as their ASCII representation. The next decimal codeUnit values (226, 128,
        // 182) are a four-byte UTF-8 repesentation of the DOG FACE character.
        
        // * UTF-16 Representation *
        // Character:           D (U+0044)  O (U+006F)  G (U+0067)  !! (U+203C)     🐶 (U+1F436)
        // UTF-16 Code Unit:    68          111         103         53357           56734
        // Position:            0           1           2           3               4
        
        for codeUnit in dogString.utf16 {
             print("\(codeUnit) ", terminator: "")
        }
        
        // * Unicode Sacalar Representation *
        // Character:           D (U+0044)  O (U+006F)  G (U+0067)  !! (U+203C)     🐶 (U+1F436)
        // Scalar Code Unit:    68          111         103         8252            128054
        // Position:            0           1           2           3               4
        
        // You can access a Unicode scalar representation of a String value by iterating over its unicodeScalars property.
        // This property is of type UnicodeScalarView, which is a collection of values of type UnicodeScalar.
        for scalar in dogString.unicodeScalars {
            print("\(scalar.value)", terminator: "")
            print("\(scalar)")
        }
        
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

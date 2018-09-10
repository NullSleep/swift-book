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
        
        // If you don't need each value from a sequence, you can ignore the values by using an underscore in place of a
        // variable name.
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            answer *= base
        }
        print("\(base) to the power of \(power) is \(answer)")
        
        // Use the half-open range operator (..<) to include the lower bound but not the upper bound.
        let minutes = 60
        for tickMark in 0..<minutes {
            print("Ttick mark [\(tickMark)]")
        }
        
        // Use the stride(from:to:by) function to skip unwanted tick marks
        let minuteInterval = 5
        for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
            print("Ttick mark [\(tickMark)]")
        }
        
        // Closed ranges are also available, by using stride(from:through:by:) instead
        let hours = 12
        let hourInterval = 3
        for tickMark in stride(from: 3, through: hours, by: hourInterval) {
            print("Ttick mark [\(tickMark)]")
        }
        
        // MARK: - WHILE LOOPS
        // A while loop performs a set of statements until a condition becomes false. These kinds of loops are best
        // used when the number of iterations is not know before the first iteration begins. Swift provides two kinds
        // of while loops:
        // - while evaluates its condition at the start of each pass through.
        // - repeat-while evaluates its condition at the end of each pass through the loop.
        
        // MARK: While - Creating a simple game of Snakes and Ladders
        // The rules of the game:
        // - The boards has 25 squares, and the aim is to land on or beyond square 25.
        // - The player staring squere is "square zero", which is just off the bottom-left corner of the board.
        // - Each turn, you roll a six-sided dice and move by that number of squares, following the horizonal path
        //   indicated by the dotted arrow in the assets file.
        // - If your turn ends at the bottom of a ladder, you move up that ladder.
        // - If your turn ends at the head of a snake, you move down that snake.
        
        // The game board is represneted by an array of Int values. Its size is based on a constant called 'finalsquare',
        // which is used to intialize the array and also to check for a win condition later in the example. Because the
        // players start off the board, on "square zero", the board is intialized with 26 zero Int values, not 25.
        let finalSquare = 25
        var board = [Int](repeating: 0, count: finalSquare + 1)
        
        // Some square are then set to have more specific values for the snakes and ladders. Squares with a ladder base
        // have a positive number to move you up the board, whereas squares with a snake head have a negative number to
        // move yoy back down the board.
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        
        // Square 3 contains the bottom of a ladder that mvoe you up to square 11. To represent this, board[03] is equal
        // to +08, which is equivalent to an integer of value 8 (the difference beterrn 3 and 11). To align the values and
        // statements, the unary plus operatior (+i) is expecitly used with the unary minus operator (-i) and numbers
        // lower rhan 10 are padded with zeros. (Neither stylistic technique is strcitly necessary, but they lead to
        // neater code.)
        var square = 0
        var diceRoll = 0
        while square < finalSquare {
            // Roll the dice
            diceRoll += 1
            if diceRoll == 7 {
                diceRoll = 1
            }
            // Move by the rolled amount
            square += diceRoll
            
            if square < board.count {
                // If we're still on the board, move up or down fot a snake or a ladder
                square += board[square]
            }
        }
        print("Game over!")
        
        // The example above use a very simple approach to dice rolling. Instead of generating a random number, it starts
        // with a diceRoll value of 0. Each time through the while loop, diceRoll is incremented by one and is then
        // checked to see wheter it has become too large. Whenever this return value equal 7, the dice roll has become
        // too large and is reset to a value of 1. The result is a sequence fo diceRoll values that is always 1, 2, 3, 4,
        // 5, 6, 1, 2 and so on.
        
        // A while loop is appropiate in this case, because the lenght of the game is not clear at the start og the
        // while loop. Instead, the loop is executed until a particular condition is satisfied.
        
        // MARK: Repeat-While
        // Performs a sible pass through the loop block first, before considering the loop's condition. It then continues
        // to repeat the loop until the condition is false.
        // The repeat-while loop in Swift is analogous to a do-while loop in other languages.
        let finalSquare2 = 25
        var board2 = [Int](repeating: 0, count: finalSquare2 + 1)
        
        board2[03] = +08; board2[06] = +11; board2[09] = +09; board2[10] = +02
        board2[14] = -10; board2[19] = -11; board2[22] = -02; board2[24] = -08

        var square2 = 0
        var diceRoll2 = 0
        repeat {
            // Move up or down for a snake or ladder
            square2 += board2[square2]
            // Roll the dice
            diceRoll2 += 1
            if diceRoll2 == 7 {
                diceRoll2 = 1
            }
            // Move by the rolled amount
            square2 += diceRoll2
        } while square2 < finalSquare2
        print("Gave over!")
        
        // MARK: Conditional Statements
        // If is the simpliest form of conditional staments.
        let temperatureInFahrenheit = 90
        if temperatureInFahrenheit <= 32 {
            print("It's very cold. Consider weareing a scarf.")
        } else if temperatureInFahrenheit >= 86 {
            print("It's really warm.")
        } else {
            print("It's not that cold.")
        }
        
        // MARK: Switch
        // A switch statement provides an alternative to the if statement for responding to multiple potential states
        // Every switch statement must be exhaustive. That is, every possible value of the type being considered must
        // be match by one of the switch cases.
        let someCharacter: Character = "z"
        switch someCharacter {
        case "a":
            print("The first letter of the alphabet")
        case "z":
            print("The last letter of the alphabet")
        default:
            print("Some other character")
        }
        
        // MARK: No implicit Fallthrough
        
        // This will report a compile-time error because the case "a" does not contain any executable statements. This
        // approact aboud accidental fallthrough from one case to another and makes for safer code that is clear in its
        // intent.
//        let annotherCharacter: Character = "a"
//        switch annotherCharacter {
//        case "a":
//        case "A":
//            print("The letter A")
//        default:
//            print("Not the letter A")
//        }
        
        // To make a switch with a single case that matches botth "a" and "A" we can combine both statements.
        let annotherCharacter: Character = "a"
        switch annotherCharacter {
        case "a", "A":
            print("The letter A")
        default:
            print("Not the letter A")
        }
        
        // NOTES:
        // - For readability a compund case can also be written over multiple lines
        // - To explicitly fall through at the end of a particular switch case, use the fallthrough keyword.
        // - Althought break is not required in Swift, you can use a break statement to match and ignore particular case
        //   or to break out of a matched case before that case has completed its execution.
        
        // MARK: Interval Matching
        // Values in switch cases can be checked for their inclusion in an interval.
        let approximateCount = 62
        let countedThings = "moons orbiting Saturn"
        let naturalCount: Stirng
        
    }
}

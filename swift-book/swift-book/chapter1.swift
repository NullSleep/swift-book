//
//  chapter1.swift
//  swift-book
//
//  Created by Carlos Arenas on 6/30/18.
//  Copyright © 2018 Carlos Arenas. All rights reserved.
//

// Swift features:
// - Variables are always intialized before use.
// - Array indices are checked for out-of-bounds errors.
// - Integers are checked for overflow.
// - Optionals ensure that the nil values are handled explicitly.
// - Memory is managed automatically.
// - Error handling allows controlled recovery from unexpected failures.

import Foundation

class chapter1 {
    var philosopher: Philosopher?
    
    func coreFeatures() {
        print("He who is brave is free.")
        print("\n---\n")
        
        var bokuNoVar = 45
        bokuNoVar = 50
        print(bokuNoVar)
        print("\n---\n")
        
        let bokuNoConstant = 12
        print(bokuNoConstant)
        print("\n---\n")
        
        let implicitInteger = 63
        print(implicitInteger)
        let implicitDouble = 78
        print(implicitDouble)
        let explicitDouble: Double = 74
        print(explicitDouble)
        let explicitFloat: Float = 43
        print(explicitFloat)
        print("\n---\n")
        
        let label = "Glory to the brave."
        let width = 64
        let compuesto = label + String(width)
        print(compuesto)
        print("\n---\n")
        
        let apples = 3
        let oranges = 5
        let manzanasMasAxioma = "Tengo \(apples) manzanas. Tambien: Dare to stand out."
        print(manzanasMasAxioma)
        let resumenMasAxioma = "Tengo \(apples + oranges) frutas. Tambien: Persistence trumps talent."
        print(resumenMasAxioma)
        
        let quotation = """
        Only the difficult things that push you to the limit and the demand the best are the ones that give pride, true pleasure and long term benefits.
        
        Y todavia tengo \(apples + oranges) furtas.
        """
        print(quotation)
        print("\n---\n")
        
        var philosopherList = ["Nietzsche", "Plato", "Sartre", "Epicurus"]
        philosopherList[0] = "Hume"
        print(philosopherList)
        
        var tendencies = [
            "Nietzsche": "Power",
            "Sartre": "Existensialism"
        ]
        tendencies["Hume"] = "esceptisism"
        print(tendencies)
        print("\n---\n")
        
        let emptyArray = [String]()
        print(emptyArray)
        let emptyDictionary = [String : Float]()
        print(emptyDictionary)
        print("\n---\n")
        
        philosopherList = []
        print(philosopherList)
        tendencies = [:]
        print(tendencies)
        print("\n---\n")
        
        let individualScores = [1820, 1945, 1985]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 4
            } else {
                teamScore += 1
            }
        }
        print(teamScore)
        print("\n---\n")
        
        let optionalString: String? = "Become anti-fragile or die."
        print(optionalString == nil)
        
        let optionalName: String? = "The unexamined life is not worth living. Man."
        var greeting = "Knowledge:"
        if let name = optionalName {
            greeting = "Knowledge: \(name)"
        }
        print(greeting)
        print("\n---\n")
        
        // Another way to handle optinal values is to provide a default values using the ?? operator.
        // If the optional value is missing, the default value is used instead.
        let nickname: String? = nil
        let fullname: String = "Laziness and mediocrity are easy decisions to make, but almost never give anything good specially in the long term."
        let informalGreeting = "Sup \(nickname ?? fullname)"
        print(informalGreeting)
        print("\n---\n")
        
        let quote = "Be so good they can’t ignore you."
        switch quote {
        case "The only way of being is being.":
            print("Knowing is not enough; we must apply. Willing is not is not enough; we must do.")
        case "A man with no friends is a man with no power.":
            print("Motivation is what gets you started. Habit is what keeps you going.")
        case let x where x.hasSuffix("ignore"):
            print("The word was \(x)")
        default:
            print("Strategy without tactics is the slowest route to victory. Tactics without strategy is the noise before the defeat.")
        }
        print("\n---\n")
        
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
            ]
        var largest = 0
        var largestKind = ""
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                    largestKind = kind
                }
            }
        }
        print(largest)
        print(largestKind)
        print("\n---\n")
        
        var n = 2
        while n < 100 {
            n *= 2
        }
        print(n)
        print("\n---\n")
        
        // Optionals Sol 1
        var philosopherName: String?
        if let philosopher = philosopher {
            philosopherName = philosopher.name
        }
        print(philosopherName ?? "Courage is being afraid, but then doing what you have to do anyway.")
        print("\n---\n")
        
        // Optionals Sol 2
        // Declaring a philosopher to avoid the retrun to test the oposite case comment this initialization
        philosopher = Philosopher()
        philosopher?.name = "Friedrich Nietzsche"
        philosopher?.image = "bi_nie"
        philosopher?.cellImage = "image-cell1"
        
        guard let phil = philosopher,
            let philName = phil.name else {
                print("Success is going from failure to failure without loss of enthusiasm.")
                return
        }
        print(philName)
        print("\n---\n")
        
        var m = 2
        repeat {
            m *= 2
        } while m < 100
        print(m)
        print("\n---\n")
        
        var total = 0
        for i in 0..<6 {
            total += i
        }
        print(total)
        print("\n---\n")
        
        let response = greet(person: "Epicurus",
                             quote: "Success is never final. Failure is never fatal. It is courage that counts.")
        print(response)
        
        let response2 = secondGreet("Woody Allen",
                                    quote: "Talent is luck, the important thing in life is courage.")
        print(response2)
        print("\n---\n")
        
        // Using tuples to make coupound values (in this case to return multiple values from a function)
        let statistics = calculateStatistics(scores: [5, 6, 100, 33, 67, 200])
        print("Sum via naming the explicit parameter: \(statistics.sum)")
        print("Sum via the index of the returned parameters: \(statistics.2)")
        print("Min: \(statistics.min)")
        print("Max: \(statistics.max)")
        print("\n---\n")
        
        // Nested functions
        let x = returnFifteen()
        print(x)
        print("\n---\n")
        
        // Functions returning other functions
        let increment = makeIncrement()
        print(increment(8))
        print("\n---\n")
        
        // Functions taking other function as arguments
        let numbers = [20, 19, 7, 12]
        let hasMatches = hasAnyMatches(list: numbers, condition: lessThanTen)
        print(hasMatches)
        print("\n---\n")
        
        let functions = """
        Function are acutally a speciall case of closures: blocks of code than can be called later. The code in closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it is executed-- an example of this can be seen in nested functions. You can write a closure without a name by surrounding code with brace ({}) Use 'in' to separate the argument and return type from the body.
        """
        print(functions)
        let nums = numbers.map({ (number: Int) -> Int in
            let result = 3 * number
            return result
        })
        print(nums)
        print("\n---\n")
        
        // Closure experiment (as suggested in the book)
        let oddsZero = numbers.map ({ (number: Int) -> Int in
            if number % 2 != 0{
                return 0
            }
            return number
        })
        print(oddsZero)
        print("\n---\n")
        
        // When a closure type is already knwon, such as the callback for a delegate, you can omit the type of its parameters
        let mappedNumbers = ({ number in 3 * number })
        print(mappedNumbers)
        print("\n---\n")
        
        // Referening to the parameters by number instead of by the name
        // This approcach ua wua vwe
        let sortedNums = numbers.sorted{ $0 > $1}
        print(sortedNums)
        print("\n---\n")
        
        // Creating an instance of the class we just created. We use dot syntax to access the properties and methods of the instance
        let shape = Shape()
        shape.runTests()
        shape.numSides = 8
        let shapeDescription = shape.simpleDescription()
        print(shapeDescription)
        print("\n---\n")
        
        // Testing a class with init
        let nshape = NamedShape(name: "Always and above all control your emotions. Think before you act. Keep calm, cool and collected. Be smart.")
        print(nshape.name)
        print("\n---\n")
        
        // Sublcassing and overriding functions
        let sqtest = Square(sideLength: 6.8, name: "Stay hungry. Pray on success.")
        print(sqtest.area())
        print(sqtest.simpleDescription())
        print("\n---\n")
        
        // Testing the subclass circle
        let circleTest = Circle(radius: 45, name: "If you are depressed you are living in the past. If you are anxious you are living in the future. If you are at peace you are living in the present. Lao Tzu")
        print(circleTest.area())
        print(circleTest.simpleDescription())
        print("\n---\n")
        
        // Testing the subclass equilateral trinagle that has properties with getters and setters
        let triangle = EquilateralTriangle(sideLength: 2.1, name: "Hide your strength and bide your time")
        print(triangle.perimeter)
        triangle.perimeter = 12.6 // The setter of this property will set the sideLength automatically by diving by 3
        // Since the perimiter was changed in the previous line this will mean that the sideLenght was also changed
        print(triangle.sideLength)
        print("\n---\n")
        
        // Testing willSet and didSet for properties of a class
        let triangleAndSquare = TriangleAndSquare(size: 10, name: "You don’t need external “enhancers” you need calm, focus, discipline, confidence and motivation. That is it.")
        print(triangleAndSquare.square.sideLength)
        print(triangleAndSquare.triangle.sideLength)
        print(triangleAndSquare.triangle.perimeter)
        triangleAndSquare.square = Square(sideLength: 64, name: "Should you desire great tranquility, prepare to sweat.")
        print(triangleAndSquare.triangle.sideLength)
        print(triangleAndSquare.triangle.perimeter)
        print("\n---\n")
        
        // When working with optional values you can write ? beofre operations, properties, and subscripting
        // If the value before the ? is nil, everything after the ? is ignored and the value of the whole expression
        // is nil. Otherwise, the optional value is unwrapped, and everything after the ? acts on the unwrapped value.
        // In both cases, the value of the whole expression is an optional value.
        let optionalSquare: Square? = Square(sideLength: 2.4, name: "Luck is when preparation meets opportunity.")
        print(optionalSquare?.simpleDescription() ?? "")
        let sideLenght = optionalSquare?.sideLength
        print(sideLenght ?? "")
        print("\n---\n")
}

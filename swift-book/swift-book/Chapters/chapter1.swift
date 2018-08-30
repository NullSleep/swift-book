//
//  chapter1.swift
//  swift-book
//
//  Created by Carlos Arenas on 6/30/18.
//  Copyright © 2018 Carlos Arenas. All rights reserved.
//

import Foundation

class chapter1 {
    
    // MARK: - GENERAL NOTES
    
    // Swift features:
    // - Variables are always intialized before use.
    // - Array indices are checked for out-of-bounds errors.
    // - Integers are checked for overflow.
    // - Optionals ensure that the nil values are handled explicitly.
    // - Memory is managed automatically.
    // - Error handling allows controlled recovery from unexpected failures.
    
    // MARK: - CHAPTER: SWIFT TOUR
    
    var philosopher: Philosopher?
    
    func execute() {
        print("ACCEPTANCE CRITERIA: The criteria that the software component, product, or system must satisfy in order to be accepted by the customer.")
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
        let manzanasMasAxioma = "Tengo \(apples) manzanas. ACCEPTANCE PROCESS: The process used to verify that a new or modified software product is fully operational and meets the customer's requirements."
        print(manzanasMasAxioma)
        let resumenMasAxioma = "Tengo \(apples + oranges) frutas. ACCEPTANCE TESTING: Formal testing conducted by the customer to determine whether or not a software product or system satisfies the documented acceptance criteria. Successful completion of acceptance testing defines the point at which the customer will accept the product as a successful implementation."
        print(resumenMasAxioma)
        
        let quotation = """
        ACTIVITY
        A major unit of work to be completed in achieving the objectives of a software project. An activity incorporates a set of tasks to be completed, consumes resources, and results in work products. An activity may contain other activities in a hierarchical manner. All project activities are described in the Project Plan.
        
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
        let fullname: String = "ACTOR: A person or system that interacts with the software application in support of a specific process or to perform a specific operation or related set of operations. See Use Case."
        let informalGreeting = "Sup \(nickname ?? fullname)"
        print(informalGreeting)
        print("\n---\n")
        
        let quote = "ALGORITHM: A set of well-defined rules for the solution to a problem in a finite number of steps. Generally implemented as a logical or mathematical test or calculation. See Business rules."
        switch quote {
        case "ANOMALY":
            print("Knowing is not enough; we must apply. Willing is not is not enough; we must do.")
        case "APPLICATION":
            print("Motivation is what gets you started. Habit is what keeps you going.")
        case let x where x.hasSuffix("ignore"):
            print("The word was \(x)")
        default:
            print("ANOMALY: A nice word for 'bug.' Anything observed in the operation of software that deviates from expectations based on design documentation or user references.")
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
        print(philosopherName ?? "APPLICATION: One or more software executables designed to fulfill a specific set of business functions individually or in cooperation with other applications.")
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
        Functions are acutally a special case of closures: blocks of code than can be called later. The code in closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it is executed-- an example of this can be seen in nested functions. You can write a closure without a name by surrounding code with brace ({}) Use 'in' to separate the argument and return type from the body.
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
        
        // Enumerations and Structures
        let ace = Rank.ace
        print(ace)
        let aceRawValue = ace.rawValue
        print(aceRawValue)
        print("\n---\n")
        
        // Compare the rank enumeration
        print(compareRankValues(rank1: Rank.queen, rank2: Rank.jack))
        print(compareRankValues(rank1: Rank.five, rank2: Rank.king))
        print("\n---\n")
        
        // Using the init?(rawValue:) initializer to make an instance of an enumeration from a raw value. It returns
        // either the enumeration case matching the raw value or nil if there is no matching rank
        if let convertedRank = Rank(rawValue: 3) {
            let threeDescription = convertedRank.simpleDescription()
            print(threeDescription)
            print(convertedRank)
        }
        print("\n---\n")
        
        // The case values of an enumartion are actual values, not just another way of writing raw values.
        // In fact, in cases where there isn't a meaningful raw value, you don't have to provide one.
        enum Suit {
            case spades, hearts, diamonds, clubs
            
            func simpleDescription() -> String {
                switch self {
                case .spades:
                    return "Spades"
                case .hearts:
                    return "hearts"
                case .diamonds:
                    return "diamonds"
                case .clubs:
                    return "clubs"
                }
            }
            
            func color() -> String {
                switch self {
                case .spades, .clubs:
                    return "black"
                case .hearts, .diamonds:
                    return "red"
                }
            }
        }
        let hearts = Suit.hearts
        let heartsDescription = hearts.simpleDescription()
        print(heartsDescription)
        print(hearts.color())
        print("\n---\n")
        
        // Another choice for enumeration cases is to have values associated with the case - these values are
        // determined when you make the instance, and they can be different for each instance of an enumeration case.
        enum ServerResponse {
            case result(String, String)
            case failure(String)
            case noResponse(String, String)
        }
        
        let success = ServerResponse.result("6:56 am", "7:09 pm")
        print(success)
        let failure = ServerResponse.failure("Out of cheese")
        print(failure)
        let noResponse = ServerResponse.noResponse("Server down", "600")
        print(noResponse)
        
        // Using each of the parameters passed and asgigning them a variable
        //        switch success {
        //        case let .result(sunrise, sunset):
        //            print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
        //        case let .noResponse(errorDescription, errorCode):
        //            print("The error is \(errorDescription) with error code \(errorCode)")
        //        case let .failure(message):
        //            print("Failure... \(message)")
        //        }
        print("\n---\n")
        
        // Struct (Structures) support many of the same behaviors as classes, including methods and initializer.
        // One of the most important differences between structures and classes is that structures are always copied
        // when they are passed around in your code, but classes are passed by reference.
        struct Card {
            var rank: Rank
            var suit: Suit
            
            func simpleDescription() -> String {
                return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
            }
            
            func fullDeck() -> [Card]{
                return [
                    Card(rank: .ace, suit: .spades),
                    Card(rank: .two, suit: .hearts),
                    Card(rank: .three, suit: .diamonds),
                ]
            }
        }
        let threeOfSapdes = Card(rank: .three, suit: .spades)
        print(threeOfSapdes.simpleDescription())
        let deck = threeOfSapdes.fullDeck()
        print(deck)
        print("\n---\n")
        
        // Classes, enumerations and structs can all adopt protocols
        // Class that conform with 'ExampleProtocol' protocol.
        class SimpleClass: ExampleProtocol {
            var simpleDescription: String = "A very simple class ->> Work like you don’t need money, love like you’ve never been hurt, and dance like no one’s watching."
            var anotherProperty: Int = 21344
            
            func adjust() {
                simpleDescription += "- Now 100% adjusted"
            }
        }
        let a = SimpleClass()
        a.adjust()
        print(a.simpleDescription)
        print("\n---\n")
        
        // Structure that conforms with the 'ExampleProtocol' protocol.
        struct SimpleStrucutre: ExampleProtocol {
            var simpleDescription: String = "A simple structure ->> Originality is the talent for seeing things that have no name. Nietzsche"
            
            // The use of 'mutating' marks a method that modifies the structure. Classes don't need methods to be marked
            // as mutating because methods on a class can always modify it.
            mutating func adjust() {
                simpleDescription += " ->> The secret for taking the greatest enjoyment in Life is- to live dangerously!  Nietzsche"
            }
        }
        var b = SimpleStrucutre()
        b.adjust()
        print(b.simpleDescription)
        print("\n---\n")
        
        // Enum that conforms with the 'ExampleProtocol' protocol
        enum simpleEnum: ExampleProtocol {
            case Base, Adjusted
            var simpleDescription: String {
                return self.getDescription()
            }
            
            func getDescription() -> String {
                switch self {
                case .Base:
                    return "- Pain is temporary. Quitting last forever."
                case .Adjusted:
                    return "- It only hurts when you stop moving"
                }
                
            }
            
            mutating func adjust() {
                self = simpleEnum.Adjusted
            }
        }
        var c = simpleEnum.Base
        c.adjust()
        print(c.simpleDescription)
        print("\n---\n")
        
        // Simple description an extension that conforms to a protocol.
        print(6.simpleDescription)
        print("\n---\n")
        
        // Using another extension that complies with the 'ExampleProtocol'
        print(88.9.absoluteValue)
        // print(88.9.adjust()) // ERROR: Cannot use mutating member on immutable value: literals are not mutable
        var coolDouble = -6.4
        print(coolDouble.absoluteValue)
        print(coolDouble.simpleDescription)
        coolDouble.adjust()
        print(coolDouble)
        print("\n---\n")
        
        // Protocols names can be used like any other named tyoe.
        // The variable protocolValue has a runtime type of SimpleClass, the compiler treats it as the given type of example protocol.
        let protocolValue: ExampleProtocol = a
        print(protocolValue.simpleDescription)
        
        // -- Error Handling --
        // You represent errors using any type that adopts the Error protocol
        enum PrinterError: Error {
            case outOfPaper
            case noToner
            case onFire
        }
        // Use 'throw' to throw an error and throws to mark a function that can throw an error.
        func send(job: Int, toPrinter printerName: String) throws -> String {
            if printerName == "Printer 666" {
                throw PrinterError.noToner
            } else if printerName == "Printer On Fire" {
                throw PrinterError.onFire
            }
            return "Job sent to printer: \(printerName)"
        }
        // There are several ways to hanlde errors. One way is to use do-catch. Inside the 'do' block, you mark code that
        // can throw an error by writing try in front of it. Inside the catch block, the error is automatically give the
        // name 'error' unless you give it a different name
        do {
            let printerResponse = try send(job: 1024, toPrinter: "Printer 1") // Works as intended
            // let printerResponse = try send(job: 1024, toPrinter: "Printer 666") // throws an error as expected
            print(printerResponse)
        } catch {
            print(error)
        }
        
        // You can provide multiple catch blocks that handle specific errors. You write a pattern after catch just as you
        // do after case in a switch.
        do {
            let printerResponse = try send(job: 1024, toPrinter: "Printer XLS")
            //let printerResponse = try send(job: 1024, toPrinter: "Printer On Fire")
            print(printerResponse)
            //throw PrinterError.onFire // Testing throwing errors inside the do block
            
            // Testing throwing errors that aren't specifically being looked for.
            // This works if the catch 'PrinterError.onFire' isn't triggered first
            // throw PrinterError.outOfPaper
        } catch PrinterError.onFire {
            print("DANGER the printer is on Fire!!! -> Everything that is worth doing is worth doing right.")
        } catch let printerError as PrinterError {
            print("Printer error: \(printerError)")
        } catch {
            print(error)
        }
        print("\n---\n")
        
        // Handling error using try? to convert the result to an optional
        let printerSuccess = try? send(job: 256, toPrinter: "To be is to do")
        print(printerSuccess ?? "")
        let printerFailure = try? send(job: 64, toPrinter: "Printer 666")
        print(printerFailure ?? "The real value of 'printerFailure' is never printed because an error is thrown and the value of the variable is nil.")
        print("\n---\n")
        
        // Use 'defer' to wirte a block of code that is executed after all other code in the function,
        // just before the function returns. The code is executed regardless of wheter the function throws and error.
        // You can use defere to wirte setup and cleanup code next to each other, even though they need to be
        // executed at different times
        var fridgeIsOpen = false
        let fridgeContent = ["milk", "eggs", "leftovers"]
        
        func firdgeContains(_ food: String) -> Bool {
            fridgeIsOpen = true
            defer {
                fridgeIsOpen = false
            }
            
            let result = fridgeContent.contains(food)
            return result
        }
        print(firdgeContains("maracuyá"))
        print(fridgeIsOpen)
        print("\n---\n")
        
        // -- Generics --
        // Wirte a name inside angle bracktes to make a generic function or type.
        func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
            var result = [Item]()
            for _ in 0..<numberOfTimes {
                result.append(item)
            }
            return result
        }
        print(makeArray(repeating: "Ramstein!", numberOfTimes: 6))
        print("\n---\n")
        
        // Making generic forms of functions and methods, as well as classes, enumerations, and structures.
        // Reimplementing the swift standard library's optional type.
        enum OptionalValue<Wrapped> {
            case none
            case some(Wrapped)
        }
        var possibleInteger: OptionalValue<Int> = .none
        print(possibleInteger)
        possibleInteger = .some(100)
        print(possibleInteger)
        print("\n---\n")
        
        // User 'where' right before the body to specify a list of requirements, such as to require the type to
        // implement a protocol, to require two types to be the same, or to require a class to have a particular
        // superclass.
        // Writting '<T: Equatable>' is the same as writing '<T>... where T:Equatable'
        // This function recieves two Sequence of elements (T and U) and iterates throw them looking for similar element.
        // The use 'where' makes the function to make Elements in the lists are Equatable and elements in both list can be compared
        func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
        where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
            for lhsItem in lhs {
                for rhsItem in rhs {
                    if lhsItem == rhsItem {
                        return true
                    }
                }
            }
            return false
        }
        print(anyCommonElements([1, 2, 3], [3]))
        print(anyCommonElements([1, 2, 3], [666]))
        print("\n---\n")
        
        // EXP: Create a similar function to anyCommonElements(_:_:) that retuns an array of the elements that any two sequences have in common.
        func listOfCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Array<Any>
        where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
            var response = Array<Any>()
            for lhsItem in lhs {
                for rhsItem in rhs {
                    if lhsItem == rhsItem {
                        response.append(lhsItem)
                    }
                }
            }
            return response
        }
        print(listOfCommonElements([1, 2, 3, 7, 10, 29], [3, 10]))
        print(listOfCommonElements([1, 2, 3, 7, 10, 29], [3, 10, 776]))
        print(listOfCommonElements([1, 2, 3, 7, 10, 29], [43, 776]))
    }
    
    func greet(person: String, quote: String) -> String {
        return "Sup \(person). Quote: \(quote)"
    }
    
    // Custom argument label that effectively removes the need for am explecit paramenter when invoked.
    func secondGreet(_ person: String, quote: String) -> String {
        return "Sup \(person). Quote: \(quote)"
    }
    
    // Using a tuple to make a compound value to return multiples values in a fuction.
    // The elements of a tuple can be referred tp either by name or by number.
    func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum:Int) {
        
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }
        
        return (min, max, sum)
    }
    
    // Nested functions have access to variables that were declared in the outer function
    func returnFifteen() -> Int {
        var y = 10
        
        func add() {
            y += 5
        }
        add()
        return y
    }
    
    // Functions are a first-class type. This means that a function can return another function as its value
    func makeIncrement() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        return addOne
    }
    
    // A function can take another function as one of its arguments
    func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        return false
    }
    
    // Second function to be passed as an argument in 'hasAnyMatches'
    func lessThanTen(number: Int) -> Bool {
        return number < 10
    }
    
    // We can add classes inside classes
    class Shape {
        var numSides = 0
        let numToAdd = 10
        
        func simpleDescription() -> String {
            return "A shape with \(numSides) sides."
        }
        
        func runTests() {
            // Using a function that returns another function
            print("~ RUNNING TESTS FOR CLASS SHAPE ~")
            let incNum = increaseNumber()
            print(incNum(6))
            print("\n---\n")
        }
        
        func increaseNumber() -> ((Int) -> Int) {
            func addNumber(number: Int) -> Int {
                return numToAdd + number
            }
            return addNumber
        }
    }
    
    // A class with an init
    class NamedShape {
        var numSides = 0
        var name: String
        
        init(name: String) {
            self.name = name
        }
        
        func simpleDescription() -> String {
            return "A shape with \(numSides) sides."
        }
        
        // Use 'deinit' to create a deinitializer if you need to perfom som cleanup before the object is deallocated.
    }
    
    // Creating a subclass. Methods on a subclass that override the superclass's implementation are marked with override.
    class Square: NamedShape {
        var sideLength: Double
        
        init(sideLength: Double, name: String) {
            self.sideLength = sideLength
            super.init(name: name)
            numSides = 4 // A square has 4 sides.
        }
        
        func area() -> Double {
            // The equation for calculating the are of a square
            return sideLength * sideLength
        }
        
        override func simpleDescription() -> String {
            return "A square with sides of length \(sideLength)."
        }
    }
    
    // More subclassing and overriding function
    class Circle: NamedShape {
        var radius: Double
        var cname: String
        
        init(radius: Double, name: String) {
            self.radius = radius
            self.cname = name
            super.init(name: name)
        }
        
        func area() -> Double {
            let pi = Double.pi //.pi also works
            return pi * radius
        }
        
        override func simpleDescription() -> String {
            return "The circle has a radius of \(radius) and an area of \(area())"
        }
    }
    
    // In addition to simple properties (variables) that are stored, properties can have a getter and setter.
    class EquilateralTriangle: NamedShape {
        var sideLength: Double = 0.0
        
        init(sideLength: Double, name: String) {
            self.sideLength = sideLength
            super.init(name: name)
            numSides = 3
        }
        
        var perimeter: Double {
            get {
                return 3.0 * sideLength
            }
            set {
                sideLength = newValue / 3.0
            }
        }
        
        override func simpleDescription() -> String {
            return "An equilateral triangle with side lenght \(sideLength)."
        }
    }
    
    
    // If we don't need to compute the property but still need to provide code that is run before and after setting a
    // new vale, use willSet and didSet. The code you provide is run any time the value changes outside of the
    // initializer.
    // This class ensures that eh side of the triangle is always the same as the side lenght of its square
    class TriangleAndSquare {
        
        var triangle: EquilateralTriangle {
            willSet {
                square.sideLength = newValue.sideLength
            }
        }
        
        var square: Square {
            willSet {
                triangle.sideLength = newValue.sideLength
            }
        }
        
        init(size: Double, name: String) {
            square = Square(sideLength: size, name: name)
            triangle = EquilateralTriangle(sideLength: size, name: name)
        }
    }
    
    // Use enum to create enumeration. Like classes and all other name tyopes, enumerations can have methods associated
    // with them.
    enum Rank: Int {
        case ace = 1
        case two = 2, three = 3, four = 4, five = 5, six = 6, seven = 7, eight = 8, nine = 9, ten = 10
        case jack = 11, queen = 12, king = 13
        
        func simpleDescription() -> String {
            switch self {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
            }
        }
    }
    
    // Comparing enums with their respective rawValues
    func compareRankValues(rank1: Rank, rank2: Rank) -> Rank {
        if rank1.rawValue >= rank2.rawValue {
            return rank1
        } else {
            return rank2
        }
    }
}

// Protocols
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

// EXTENSIONS
// Using extension to add functionality to an exisiting type, such as new methods and computed properties.
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "Run the number. The numnber selected \(self)"
    }
    
    // Since this is function that will operate on 'self' it needs to be mutating.
    mutating func adjust() {
        self += 64
    }
}

extension Double: ExampleProtocol {
    // New method
    var absoluteValue: Double {
        if self > 0 {
            return self
        } else {
            return self * -1
        }
    }
    
    var simpleDescription: String {
        return "Glory to the brave. The number selected \(absoluteValue)"
    }
    
    mutating func adjust() {
        self += 666.0
    }
}

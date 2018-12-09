import UIKit

class MyClass/*: OptionalSuperClass, OptionalProtocol1, OptionalProtocol2 */ {
    var myProperty: String
    var myOptionalPrortery: String?
    // More properties...
    
    init() {
        myProperty = "Foo"
    }
    
    func doIt() -> Int {
        return 0
    }
    
    func doIt(_ i: Int) -> Int {
        return i
    }
    
    func doIt(a: Int) -> Int {
        return a
    }
    
    func doIt(a: Int, b: Int) -> Int {
        return a+b
    }
    
    func doIt(_ a: Int, b: Int) -> Int {
        return a+b
    }
    
    // More mehtods...
}

var a = MyClass()
a.myProperty
a.doIt()
a.doIt(1)
a.doIt(2, b:3)

enum CollisionType: Int {
    case Player = 1
    case Enemy = 2
}
var type = CollisionType.Player


var mutableDouble: Double = 1.0
mutableDouble = 2.0

let constantDouble: Double = 1.0
// constantDouble = 2.0 // error

var mutableInferredDouble = 1.0

var optionalDouble: Double? = nil
optionalDouble = 1.0
if let definiteDouble = optionalDouble {
    definiteDouble
}

var condition = true
if condition {
    // Do something
} else {
    // Do something
}

var val = 5
switch val {
case 1:
    "foo"
case 2:
    "bar"
default:
    "baz"
}

// Omits upper value, use ... to include
for i in 0..<3 {
    print(i)
}

var personOne = "Ray"
var personTwo = "Brian"
var combinedString = "\(personOne): Hello, \(personTwo)!"
var tipString = "2499"
var tipInt = Int(tipString)

extension Double {
    init(string: String) {
        self = Double(string._bridgeToObjectiveC().doubleValue)
    }
}

tipString = "24.99"
var tip = Double(string: tipString)

var person1 = "Ray"
var person2 = "Brian"
var array: [String] = [person1, person2]
array += ["Waldo"]
for person in array {
    print("person: \(person)")
}
var waldo = array[2]

var emptyDict = [String: String]()

var dict: [String: String] = ["Ford": "Focus", "Mazda": "Miata", "Tesla": "Model 3", "Chevrolet": "Impala"]
dict["Ford"] = "Mustang"
dict["Chevrolet"] = nil // delete Chevrolet
for (car, model) in dict {
    print("Car: \(car), model: \(model)")
}

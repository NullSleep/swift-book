# Swift Book
Notes and experiments on the Swift 4.0 Programming Language book by Apple.

## Swift Cheat Sheet and Quick Reference

### Class Implementation
```swift
class MyClass: OptionalSuperClass, OptionalProtocol1, OptionalProtocol2 {
  var myProperty: String
  var myOptionalPrortery: String?
  // More properties...

  init() {
    myProperty = "Foo"
  }

  // More mehtods...
}
```

### Methods
```swift
func doIt() -> Int {
  return 0
}

func doIt(a: Int) -> Int {
  return a
}

func doIt(a: Int, b: Int) -> Int {
  return a+b
}
```

### Creating/Using a Instance
```swift
var a = MyClass()
a.myProperty
a.doIt()
a.doIt(1)
a.doIt(2, b:3)
```

### Enums
```swift
enum CollisionType: Int {
  case Player = 1
  case Enemy = 2
}
var type = CollisionType.Player
```

### Declaring Variables
```swift
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
```

| Variable Types                         ||
| ------------- |:-----------------------:|
| Int           | 1, 2, 500, 10000        |
| Float, Double | 1.5, 3.14, 578.234      |
| Bool          | true, false             |
| String        | "Red", "Blue", "Yellow" |
| ClassName     | UIView, UIButton, etc   |

### Control Flow
```swfit
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
for i in 0..3 {
  print(i)
}
```

### String Quick Examples
```swift
var personOne = "Ray"
var personTwo = "Brian"
var combinedString = "\(personOne): Hello, \(personTwo)!"
var tipString = "2499"
var tipInt = tipString.toInt()

extension Double {
  init(string: String) {
    self = Double(string.bridgeToObjectiveC().doubleValue)
  }
}

tipString = "24.99"
var tip = Double(string: tipString)
```

### Array Quick Exmaples
```swift
var person1 = "Ray"
var person2 = "Brian"
var array: String[] = [person1, person2]
array += "Waldo"
for person in array {
  println("person: \(person)")
}
var waldo = array[2]
```

### Dictionary Quick Examples
var dict = Dictionary<String, String> = ["Ford": "Focus", "Mazda": "Miata", "Tesla": "Model 3", "Chevrolet": "Impala"]
dict["Ford"] = "Mustang"
dict["Chevrolet"] = nil // delete Chevrolet
for (car, model) in dic {
  print("Car: \(car), model: \(model)")
}

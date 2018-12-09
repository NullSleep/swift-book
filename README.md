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

| Variable Types                          |
| ------------- |:-----------------------:|
| Int           | 1, 2, 500, 10000        |
| Float, Double | 1.5, 3.14, 578.234      |
| Bool          | true, false             |
| String        | "Red", "Blue", "Yellow" |
| ClassName     | UIView, UIButton, etc   |

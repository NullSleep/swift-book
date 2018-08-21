//
//  chapter2_4.swift
//  swift-book
//
//  Created by Carlos Arenas on 8/11/18.
//  Copyright © 2018 Carlos Arenas. All rights reserved.
//

import Foundation

class chapter2_4 {
    // MARK: - CHAPTER: COLLECTION TYPES
    
     func execute() {
        
        // Swift provide three primary collection types, known as arrays, sets, and dictionaries, for sorting colelctions
        // of values. Array are ordered collections of values. Sets are unordered collections of unique values.
        // Dictionaries are unordered collections og key-value associations.
        
        // Arrays, sets, and dictionaries in Swift are always clear about the types of values and keys that they can store.
        // This means that you cannot insert a value of the worng type into a collection by mistake. It also means you
        // can be condifent about the type of values you will retrieve from a colleciton.
        
        // Swift's array, set and dictionary type are implemented as generic collectionns.
        
        // MARK: - MUTABILITY OF COLLECTIONS
        // If you create an array, set, or a dictionary, and assign it to a variable, the collection that is created will
        // be mutalbe. This means that you can change (or mutate) the collection after it is created by adding, removing,
        // or changing iterms in the collection. If you assign an array, a set, or a dictionry to a constant, that
        // collection is immutable, and its size and contents cannot be change.
        
        // It is good practice to create immutable collections in all cases where the collection does not need to change.
        // Doing so makes it easier for you to reason about your code and enables the Swift compiler to optimze the
        // performance of the collections you create.
        
        // MARK: - ARRAYS
        // An array stores values of the same type in an ordered list. The same value can appear in an array multiple
        // times at different positions. Swift's Array type is briged to Foundation's NSArray class.
        
        // MARK: Array Type Shorthand Syntax
        // The type of a Swift array is written in full as Array<Element>, where Element is the type of values the array
        // is allow to store. You can also wirte the type of an array in shorthand for as [Element]. Although the two forms
        // are functionally identical, the shorthand form is prefered.
        
        // MARK: Creating an Empty Array
        var someInts = [Int]()
        print("someInts is of type [Int] with \(someInts.count) items.")
        someInts.append(666)
        print(someInts.count)
        // If the context already provides type information, such as a function argument or an already typed variable or
        // constant, you can create an empty array with an empty array literal
        someInts = []
        // someInts is now an empty array, but is still of type [Int]
        print(someInts.count)
        
        // MARK: Creating an Array with a Default Value
        // Swift's Array type also provides an initializer for creating an array of a certain size with all of its values
        // set to the same default value. You pass this initializer a default value of the appropiate type (called
        // repeating): and the numnber of times that value is repeated in the new array (called count):
        let threeDoubles = Array(repeating: 666.0, count: 3)
        // Prints [666.0, 666.0, 666.0] and each value is of type double
        print(threeDoubles)
        
        // MARK: Creating an Array by Adding Two Arrays Together
        // As long as the arrays have compatible types
        let anotherThreeDoubles = Array(repeating: 64.0, count: 3)
        let sixDoubles = threeDoubles + anotherThreeDoubles
        print(sixDoubles)
        
        // MARK: Creating an Array with an Array Literal
        // You can also intialize an array with an array literal, which is shorthand way to wirte one or more values
        // as an array collection. An array literal is written as a list of values, separated by commas, surrounded by
        // a pair of square brackets:
        // [value 1, value 2, value 3]
        let shopingList: [String] = ["Eggs", "Milk", "Hapiness"]
        print(shopingList)
        
        // shopingList is described as 'an array of values' wirtten as [String]
        // Thanks to Swift's type inference you don't have to write the type of the array if you're initializing it with
        // an array literal containing values of the same type.
        // var shopingList = ["Eggs", "Milk", "Hapiness"]
        
        // MARK: Accessing and Modifying an Array
        // Number of items in an arrat
        print("The shopping list contains \(shopingList.count) items.")
        
        // Is an array empty
        if shopingList.isEmpty {
            print("The shopping list is empty.")
        } else {
            print("The shopping list is not empty")
        }
    }
}

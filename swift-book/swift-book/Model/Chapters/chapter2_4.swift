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
        var shoppingList: [String] = ["Eggs", "Milk"]
        print(shoppingList)
        
        // shoppingList is described as 'an array of values' wirtten as [String]
        // Thanks to Swift's type inference you don't have to write the type of the array if you're initializing it with
        // an array literal containing values of the same type.
        // var shoppingList = ["Eggs", "Milk", "Hapiness"]
        
        // MARK: Accessing and Modifying an Array
        // Number of items in an arrat
        print("The shopping list contains \(shoppingList.count) items.")
        
        // Is an array empty
        if shoppingList.isEmpty {
            print("The shopping list is empty.")
        } else {
            print("The shopping list is not empty")
        }
        
        // Adding items to the end of an array
        shoppingList.append("Flour")
        print(shoppingList)
        
        // Alternatively, appenad an array of one or more compatible items with the addition assignment operation (+=)
        shoppingList += ["Baking Powder"]
        shoppingList += ["Nutella", "Cheese", "Butter"]
        print(shoppingList)
        
        // Array in swift are always zero-indexed.
        let firstItem = shoppingList[0]
        print(firstItem)
        
        // Using the subscript syntax to change an existing value at a given index
        shoppingList[0] = "Six eggs"
        print(shoppingList)
        
        // You can also use subscript syntax to change a range of values at once, even if the replacement set of values
        // has a different lenght than the range you are replacing.
        shoppingList[4...6] = ["Bananas", "Apples"]
        print(shoppingList)
        
        // Inserting an item into the array at a specified index
        shoppingList.insert("Milo", at: 0)
        print(shoppingList)
        
        // Removing an item in the specified index. This method returns the removed item.
        let milo = shoppingList.remove(at: 0)
        print(milo)
        print(shoppingList)
        print(shoppingList[0])
        
        // Removing the final item in an array. This method also returns the removed item.
        let apples = shoppingList.removeLast()
        print(apples)
        print(shoppingList)
        print(shoppingList.last ?? "")
        
        // MARK: Iterating over an array
        for item in shoppingList {
            print(item)
        }
        
        // To have the integer index of each item as well as its value, enumarated() should be used. For each item in
        // the array, the enumerated() methods returns a tuple composed of an integer and the item.
        for (index, value) in shoppingList.enumerated() {
            print("Item \(index + 1): \(value)")
        }
        
        // MARK: - SETS
        // A set stores distinct values of the same type in a collection with no defined ordering. You can use a set
        // instead of an array when the order of items is not important, or when you need to ensure that an item only
        // appears once. Swift's Set type is bridged to Foundation's NSSet class.
        
        // MARK: Hash Values for Set Types
        // A type must be hashable in order to be stored in a set--that is, the type must provide a way to compute a
        // hash value for itself. A hash value is an Int value that is the same for all objects that compare equally,
        // such that if a == b, it follows that a.hashValue == b.hashValue.
        
        // All of Swift's basic types (such as String, Int, Double and Bool) are hashable by default, and can be used as
        // a set value types or dictionary key types. Enumeration case values without associated values are also
        // hashable by default.
        
        // You can use your own custom types as set value types or dictionary key types by making them conform to
        // the Hastable protocol from Swift's standard library. Types taht conform to the Hashable protocol must
        // provide a gettable Int property called hasValue.
        
        // MARK: Set Type Syntax
        // The type of a Swift set is written as Set<Element>, where Element is the type that the set is allowed to store.
        // Unlike arrays, set do not have an equivalent shorthand form.
        
        // MARK: Creating and Initiliazing an Empty Set
        // The type of the 'letters' variable is inferred to be Set<Chatacter>, from the type of the initializer.
        var letters = Set<Character>()
        print("Letters is of type Set<Character> with \(letters.count) items.")
        
        // Alternatively, if the context already provides type information, such as a function argument or an already
        // typed varaible contant, you can create an empty set with an empty array literal.
        letters.insert("a")
        print(letters)
        
        letters = []
        // letters is now an empty set, but is still of type Set<Character>
        print(letters)
    
        // MARK: Creating a Set with an Array Literal
        // The favoriteGenres variable is declared as "a set of String values", written as Set<String>. Because this
        // particular set has specified a value type of String, it is only allowed to store String values.
        let favGenres: Set<String> = ["Rock", "Metal", "Retrowave"]
        print(favGenres)
        
        // A set type cannot be inferred from an array literal alone, so the type Set must be explicitly declared.
        // However, because of Swift's type inference, you don't have to write the type of the set ig you're intializing it
        // with an array literal containing values of the same type. The initialization of 'favoritesGenres' could have
        // been written in a shorter form instead:
        var favoriteGenres: Set = ["Rock", "Metal", "Retrowave"]
        print(favoriteGenres)
        
        // Because all values in the array literal are of the same type, Swift can infer that Set<String> is the correct
        // type to use for 'favoriteGenres'
        
        // MARK: Accessing and Modifying a Set
        print("I have \(favoriteGenres.count) favorite music generes")
        
        if favoriteGenres.isEmpty {
            print("As far as music goes, I'm not picky.")
        } else {
            print("I have particular musci preferences.")
        }
        
        favoriteGenres.insert("Jazz")
        print(favoriteGenres)
        
        if let removedGenre = favoriteGenres.remove("Rock") {
            print("\(removedGenre)? I'm over it.")
        } else {
            print("I never much cared for that.")
        }
        
        if favoriteGenres.contains("Funk") {
            print("I get up on the good foot.")
        } else {
            print("It's too funky in here.")
        }
        
        // MARK: Iterating Over a Set
        for genre in favoriteGenres {
            print("\(genre)")
        }
        
        // Swift's type dows not have a defined ordering. To iterate over the values of a set in a specific order, use
        // the sorted() methods, which return the set's elements as an array sorted using the < operator.
        for genre in favoriteGenres.sorted() {
            print("\(genre)")
        }
        
        // MARK: Performing Set Operations
        // You can efficiently perform fundamental set operations, such as combining two sets together, determining which
        // values two sets have in common, or determining whether two sets contain all, some, or none of the same values.
        
        // MARK: Fundamental Set operations
        // Posible operations between two sets.
        // - USe the intersection(_:) metods to create a new set of only the values common to both sets.
        // - Use the symetricDifference(_:) mehod to create a new set with values in either set, but not both
        // - Use the union(_:) New methods to create a new set with all the balues
        // - Use the bubstring(_:) method to create a new set with values.
       
        let oddDigits: Set = [1, 3, 5, 7, 9]
        let evenDigits: Set = [0, 2, 4, 6, 8]
        let singleDigitPrimerNumbers: Set = [2, 3, 5, 7]
        
        print(oddDigits.union(evenDigits).sorted())
        print(oddDigits.intersection(evenDigits).sorted())
        print(oddDigits.subtracting(singleDigitPrimerNumbers).sorted())
        print(oddDigits.symmetricDifference(singleDigitPrimerNumbers).sorted())
        
        // MARK: Set Membership and Equality
        // - Use the "is equal" operator (==) to determine whether all of the values of a set are contained in the
        // specific set.
        // - Use the isSubset(of:) method to determine whether all of the values of a set are contained in the specific set.
        // - Use the isSuperset(of:) method to determine whether a set contains all of the values in a specified set.
        // - Us the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine whether a set is a subset or a
        // superset, but not equal to, a specified set.
        // Use the isDisjoint(with:) method to determine whether two sets have no values in common.
        
        let houseAnimals: Set = ["🦊", "🦅"]
        let farmAnimals: Set = ["🦄", "🐛", "🐝", "🐧", "🐗", "🦊", "🦅"]
        let cityAnimals: Set = ["🦉", "🐊"]
        
        print(houseAnimals.isSubset(of: farmAnimals))
        print(farmAnimals.isSuperset(of: houseAnimals))
        print(farmAnimals.isSubset(of: cityAnimals))
        
        // MARK: - DICTIONARIES
        // A dictionary stores associations between keys of the same type and values of the same type in a collection
        // with no defined ordering. Each values is associated with a uniwue key, which acts as an identifier fot that
        // value within the dicitonary. Unlike items in an array, items in a dictionary do no have a specified order.
        // You use a dictionary when you need to look up values based on their identifier, in much the same way that a
        // real world dictionary is used to look up the definition for a particular word.
        
        // MARK: Dictionary Type Shorthand Syntax
        // The type of a Swift dictioanry is written in full as Dictionary<Key, Value>
        // A dictioanry Key type must conform to the Hasahble protocol, like a set's value type.
        // You can also write the type of a dictionary in a shorthand form as [Key: Value]. Although the two forms are
        // functionally identical, the shorthand form is preferred and is used thoughout this guide when referring to the
        // type of a dictionary.
        
        // MARK: Creating an Empty Dictionary
        // Creating an empty dictionary of type [Int: String] to store human-readable names of interger values. Its keys
        // are of type Int, and its values are of type String.
        var namesOfIntegers = [Int: String]()
        print(namesOfIntegers)
        namesOfIntegers[16] = "sixteen"
        print(namesOfIntegers)
        
        // If the context already provides type information, you can create an empty dictionary with an empty dictionary
        // literal, which is written as [:]
        namesOfIntegers = [:]
        print(namesOfIntegers)
        
        // MARK: Creating a Dictionary with a Dictionary Literal
        // You can also intialize a dicationy with a dictionary literal, which has a similar syntax to the the array
        // literal seen earlier.
        // A key-value pair is a combination of a key and value. The key-value pairs are wirtten as a list, separated by
        // commas, surrounded by a pair of square brackets:
        // [key1: value1, key2: value2, key3: value3]
        var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
        print(airports)
        
        // This dictionary literal contains two String: String pairs. This key-value type matches the type of the airports
        // variable declaration (a dictionary with only String keys, and only String values), and so the assigment of the
        // dictionary literal is permitted as a way to intialize the airports dictionary with two intial items.
        
        // As with arrays, you don't have to write the type of the dictionary if you're intializing it with a dictionary
        // literal whose keys and values have consistent types.
        airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin", "BOG": "Bogota"]
        print(airports)
        
        // MARK: Accessing and Modifying a Dictionary
        print("The airports dictionary cotains \(airports.count) items.")
        
        if airports.isEmpty {
            print("The airports dictionary is empty")
        } else {
            print("The airports dictionary is not empty")
        }
        
        // Adding itmes using subscript syntax
        airports["LHR"] = "London"
        
        // The value can also the be changed by using the subscript syntax
        airports["LHR"] = "London Heathrow"
        
        // As an alternative to subscripting use the dictionary's updateValue(_:forKye:) method to set or update the value
        // for a particular key. Like the subscript examples above, the updateValue(_:forKye:) mehtod sets a value for
        // a key if noe exists, or updates the value if that key already exists.
    }
        
}

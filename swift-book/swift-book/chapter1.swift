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
}

//
//  Protocols.swift
//  Swift_Learning
//
//  Created by Hariharan R S on 25/09/23.
//

import Foundation

protocol MathematicalOperations {
    var addition: (_ a: Int, _ b: Int) -> Int { get }
    var subtraction: (Int, Int) -> Int { get }
}

protocol Flyable {
    var airSpeedVelocity: Int {get}
    func fly() -> String
}

// Default method
extension Flyable {
    func fly() -> String {
        return "This is an default operation"
    }
}

protocol Named {
    var name: String { get }
}
protocol Aged {
    var age: Int { get }
}
class Person: Named, Aged {
    var name: String
    var age: Int
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
}
// '&' keyword is used to pass the multiple parameter of protocol in func
func wishHappyBirthday(to celebrator: Named & Aged) {
    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
}

class Greeting: Person {
    
    override init(_ name: String, _ age: Int) {
        super.init(name, age)
    }
    
    func showGreeting(to person: Person) -> String {
        return "Happy Birthday \(person.name), you're \(person.age)"
    }
}
let collection = Person("Hariharan", 23)

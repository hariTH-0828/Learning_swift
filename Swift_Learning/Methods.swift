//
//  Methods.swift
//  Swift_Learning
//
//  Created by Hariharan R S on 25/09/23.

    /*
        Instance Method
        Self Property
        Mutating
        Type Method
     */
//

import Foundation

class Counter {
    var count: Int = 0
    static var attemp: Int = 0
    
    func increment() {
        self.count += 1
        Counter.attemp += 1
    }
    
    func decrement() {
        self.count -= 1
        Counter.attemp += 1
    }
    
    func increment(by value: Int) {
        self.count += value
        Counter.attemp += 1
    }
    
    func decrement(by value: Int) {
        self.count -= value
        Counter.attemp += 1
    }
}

class SomeClass {
    class func typeMethod() {     // class maybe replace with static, this also work
        print("This is Type method")
    }
    
    func nonTypeMethod()  {
        print("This is non-type method")
    }
}

extension String {
    mutating func getUpdate() {
        self = self + "!"
    }
}

var someString = "Welcome"


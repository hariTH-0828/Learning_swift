//
//  ErrorHandling.swift
//  Swift_Learning
//
//  Created by Hariharan R S on 23/09/23.
//

struct Item {
    var price: Int
    var quantity: Int
}

class VendingMachine {
    var inventory = [
        "Choculate" : Item(price: 10, quantity: 10),
        "Milk shake" : Item(price: 25, quantity: 5),
        "Biscuit" : Item(price: 15, quantity: 10),
    ]
    
    enum VendingMachineError: Error {
        case InvalidSelection
        case OutOfStock
        case InsufficientAmount(caseNeeded: Int)
    }
    
    var availableBalance = 5
    
    func purchase(itemName name: String) throws {
        guard var item = inventory[name] else {
            throw VendingMachineError.InvalidSelection
        }
        
        guard item.quantity > 0 else {
            throw VendingMachineError.OutOfStock
        }
        
        guard item.price >= availableBalance else {
            throw VendingMachineError.InsufficientAmount(caseNeeded: item.price - availableBalance)
        }
        
        availableBalance -= item.price
        print("\nDispensing : \(name)")
        
        let updateItem = item
        item.quantity -= 1
        inventory[name] = updateItem
    }
}

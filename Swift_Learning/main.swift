// Closure
print("Closure Calling Statement.......")
let topWorkers = listOfWorkers.filter(nameOfWorkers)
for worker in topWorkers {
    print(worker.name)
}

print("\nClosure : Get worker name by company....")
let getWorkerNameByCompany = workersListInCompany.filter(getWorkersByCompany)

for company in getWorkerNameByCompany {
//    let workerDetails = listOfWorkers.filter { worker in return worker.id == company.workerId}.first?.name
    let worker = getWorkerByID(company.workerId)?.name
    print(worker as Any)
}

// Enumeration

print("\nEnumeration.......")
print(sendMessage(on: .INSTAGRAM))
print(getMyOpinion(get: .SIVAKARTHI))
print(isAvailablePremium(get: .YOUTUBE(subscriber: 2_000)))

// Functions

print("\nFunction concept........")
print(getSum(2,3,4,5))
print("Sum of two numbers : ",calSum(5, 6))
print("Product of the two number : ",calProduct(calSum, calProduct, 5, 5))

var resultData = getNameByIdFunction(worker: listOfWorkers, Id: 2)

// Initialization
var fahrenheit = Fahrenheit()
print(fahrenheit.temperature)

var celsius = Celsius()
print(celsius)

var square = Square(length: 4, width: 4)
print("Square size : ",square.size())

var hoursToMin = HoursToMin(1)
hoursToMin.actionHoursToMin = 5
print("Update Hour : ",hoursToMin.actionHoursToMin)

// Inheritance
print("\n")
let family = Children(fatherName: "Saravanan", motherName: "Rajula", son: "Hari", daughter: "Sri")
print(family.toString())

print("\n")
var bike = Bike(brandName: "Yamaha", model: "R15", engine: 155, gear: 5)
print(bike.toString())
bike.actionGear = 6
print("Gear level updated : ",bike.actionGear)
print(bike.toString())

// Error Handling
print("\n")
var vendingMachine = VendingMachine()
try vendingMachine.purchase(itemName: "Choculate")
let infoPerson = PersonInfo()
let itemPurchase = try? infoPerson.buyFavouriteSnake(person: "Hariharan")
print(itemPurchase as Any)
// Protocols

print("\nProtocols........")
struct SomeOperation: MathematicalOperations {
    var addition: (Int, Int) -> Int {
        get {
            return { (a, b) in return a + b }
        }
    }
    
    var subtraction: (Int, Int) -> Int {
        get {
            return { (a, b) in return a - b }
        }
    }
}

var additionResult = SomeOperation().addition(5, 5)
var subtractResult = SomeOperation().subtraction(5, 5)
print("Addition : ",additionResult, "Subtraction : ",subtractResult)

struct Aeroplane: Flyable {
    var airSpeedVelocity: Int = 120
}

let aeroplaneModel = Aeroplane()
print(aeroplaneModel.fly())
print(aeroplaneModel.airSpeedVelocity)
wishHappyBirthday(to: collection)

let greeting = Greeting("Hariharan", 23)
let wishes = greeting.showGreeting(to: collection)
print(wishes)

// Inout -> This keyword is like pointer

func square(_ num: inout Int) {
    num *= num
}

var value = 5
square(&value)
print(value)


// willSet and didSet
print("\n")
class Rectangle {
    var width: Double = 0.0 {
        willSet {
            print("About to set width to \(newValue)")
            if newValue < 0 {
                print("Invalid value! Width cannot be negative.")
            }
        }
        didSet {
            if width < 0 {
                print("Setting width to 0 because it was negative.")
                width = 0
            }
        }
    }

    var height: Double = 0.0 {
        willSet {
            print("About to set height to \(newValue)")
            if newValue < 0 {
                print("Invalid value! Height cannot be negative.")
            }
        }
        didSet {
            if height < 0 {
                print("Setting height to 0 because it was negative.")
                height = 0
            }
        }
    }
}

let rect = Rectangle()
rect.width = 5
rect.width = -3
rect.height = 7
rect.height = -2

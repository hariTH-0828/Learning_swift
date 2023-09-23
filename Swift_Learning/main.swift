// Closure
print("Closure Calling Statement.......")
let topWorkers = listOfWorkers.filter(nameOfWorkers)
for worker in topWorkers {
    print(worker.name)
}

print("\nClosure : Get worker name by company....")
let getWorkerNameByCompany = workersListInCompany.filter(getWorkersByCompany)

//for company in getWorkerNameByCompany {
//    let workerDetails = listOfWorkers.filter { worker in
//        return getWorkerById(worker, company.workerId)
//    }
//    print(workerDetails)
//}

    for company in getWorkerNameByCompany {
//        let workerDetails = listOfWorkers.filter { worker in return worker.id == company.workerId}.first?.name
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

 
//    var currentValue = -4
//    let moveNearerToZero = chooseStep(backward: currentValue > 0)
//    // moveNearerToZero now refers to the nested stepForward() function
//    while currentValue != 0 {
//        print("\(currentValue)... ")
//        currentValue = moveNearerToZero(currentValue)
//    }
//    print("zero!")


let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
//print(manager.data)

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


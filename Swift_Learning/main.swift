// Closure
print("Function Calling statement......")
var workerName = sortBySalary(worker: listOfWorkers[0])
print(workerName)

print("\nClosure Calling Statement.......")
let topWorkers = listOfWorkers.filter(nameOfWorkers)
for worker in topWorkers {
    print(worker.name)
}

print("\nClosure : Get worker name by company....")
let getWorkerNameByCompany = workersListInCompany.filter(getWorkersByCompany)

for company in getWorkerNameByCompany {
    let workerDetails = listOfWorkers.filter { worker in
        return getNameById(worker, company.workerId)
    }

    print(workerDetails)
}

// Enumeration

print("\n Enumeration.......")
let response = sendMessage(on: .INSTAGRAM)
print(response)






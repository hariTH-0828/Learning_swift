struct Workers {
    var name: String
    var location: String
    var id: Int
    var salary: Int
}

struct Company {
    var name: String
    var workerId: Int
}

let listOfWorkers = [
    Workers(name: "Aswin", location: "Madurai", id: 1, salary: 2000),
    Workers(name: "Aravinth", location: "Chennai", id: 2, salary: 1000),
    Workers(name: "Hariharan", location: "Madurai", id: 3, salary: 2000),
    Workers(name: "Sivakumar", location: "Madurai", id: 4, salary: 1500),
    Workers(name: "Ramachandran", location: "Tenkasi", id: 5, salary: 1200),
    Workers(name: "Vignesh", location: "Chennai", id: 6, salary: 2000),
]

let workersListInCompany = [
    Company(name: "Zoho", workerId: 1),
    Company(name: "Google", workerId: 2),
    Company(name: "Zoho", workerId: 3),
    Company(name: "HCL", workerId: 4),
    Company(name: "Zoho", workerId: 5),
    Company(name: "ChainSys", workerId: 6),
]

// Closure : let/var <variable_name>: (<parameter>) -> return_type = {}
let nameOfWorker: (Workers) -> (Bool) = { worker in
    return worker.salary >= 2000 && worker.location.elementsEqual("Madurai")
}

let nameOfWorkers: (Workers) -> Bool = { $0.salary >= 2000 && $0.location.elementsEqual("Madurai")}
let getWorkersByCompany: (Company) -> Bool = { $0.name.elementsEqual("Zoho") }

// In parameter we can pass only Objects
let getWorkerByID: (Int) -> Workers? = { workerId in
    return listOfWorkers.filter { worker in return worker.id == workerId}.first
}
















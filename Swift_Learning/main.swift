let userName:String = "Hariharan"  // let denotes as Constant variable
var id:Int = 19343  // var denoted as variable
var welcomeMsg = "Hello, \(userName) \(String(id))"
welcomeMsg = "Hello, "+userName+" "+String(id)

// Optional String
var name: String = userName
print(name[name.index(before: name.endIndex)])
var nickName: String? = nil

print("Hello, \(name)", (nickName ?? ""))

// switch statement

var mood = "bad"

switch mood {
    case "fun" :
        print("I'm in fun mood")
    case "sad":
        print("I'm feeling bad")
    default:
        print("I don't know what you said")
}

// for-loop statement

var range = 1...3
for _ in range {
    print(welcomeMsg)
}

//for counter in range.reversed() {
//    print(counter)
//}
//
//for i in stride(from: 10, through: 0, by: -5) {
//    print(i)
//}

// Array
var singerName:[String] = ["Yuvan shankar Raja", "A.R. Rahman", "Aniruth"]
singerName.append("S.P.B")
//singerName.append(10)

for names in singerName {
    print("\(names) is a good musician and singer");
}

// Map

// Key are in alphabet so it can be sorted in asc order
var singerPoints = [
    "Yuvan shankar Raja" : 10,
    "A.R.Rahman" : 9,
    "Aniruth" : 6
]

singerPoints["S.P.B"] = 100

// key are in numerical so it cannot be sorted
var valueCounter:[Int : Int] = [
    5: 2,
    10: 5,
    1: 3
]

print(singerPoints.keys)
print(singerPoints.values)

print(valueCounter.keys)
print(valueCounter.values)

// while loop

/*
    while loop similar to java syntax
    
     while <condition> {
     
     }
 
    do-while loop
 
     return {
        some code
    } while <condition>
 
 */

// function declaration

/* Access Modifier :
  * public,
  * open : {
    If you're declaring a method within a class and you want it to be overridable by subclasses in other modules, you can use the open keyword.
    },
  * private
 */

func showMyName() {
    print(welcomeMsg)
}

func addTwoNumbers(a: Int, b: Int) -> Int {
    return a + b
}
showMyName()
print(addTwoNumbers(a: 10, b: 15))


// Classes

class Employee {
    var employeeName:String = ""
    var employeeRole: String = ""
    var employeeId: Int = 0
    
    public func toString() -> String {
        return "Employee Name : \(employeeName) \nEmployee Role : \(employeeRole) \nEmployee ID : \(employeeId)"
    }
}

let employeeOne:Employee = Employee()
employeeOne.employeeId = 19343
employeeOne.employeeName = "Hariharan"
employeeOne.employeeRole = "IOS Developer"

print(employeeOne.toString())


// Let try multiple inheritance is support or not

class Student {
    var name: String = ""
    var fatherName: String = ""
}

class CollegeDetails: Student {
    var collegeName: String = ""
    var collegeId: String = ""
}

/* Multiple Inheritance is not suppport in swift */
/* class Registration: Student, CollegeDetails {
    
} */

class Registration: CollegeDetails {
    var registrationId:Int = 0
}

class printMe {
    public func toString(values: Registration) -> String {
        return "Registration ID : \(values.registrationId) \nName: \(values.name) \nFather Name : \(values.fatherName) \nCollege ID : \(values.collegeId) \nCollege Name : \(values.collegeName)"
    }
}

let createRegister:Registration = Registration();
createRegister.name = "Hariharan"
createRegister.fatherName = "Saravanan"

createRegister.registrationId = 1
createRegister.collegeName = "Kings Engineering College"
createRegister.collegeId = "1903"

let printObj = printMe();

print(printObj.toString(values: createRegister))


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0, key = ""
for (keyMapping, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            key = keyMapping
            largest = number
        }
    }
}
print(key, largest)

func makeIncrement() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    
    return addOne
}

var number = makeIncrement();
print(number(7))

let minVal = Int8.min
let maxVal = Int8.max
print("8 Bit in Signed Integer : ", minVal, maxVal)

let minVal32 = Int32.min
let maxVal32 = Int32.max
print("32 Bit in Signed Integer : ", minVal32, maxVal32)

let minVal64 = Int64.min
let maxVal64 = Int64.max
print("64 Bit in Signed Integer : ", minVal64, maxVal64)

let uminVal = UInt8.min
let umaxVal = UInt8.max
print("8 Bit in Unsigned Integer : ", uminVal, umaxVal)

let uminVal32 = UInt32.min
let umaxVal32 = UInt32.max
print("32 Bit in Unsigned Integer : ", uminVal32, umaxVal32)

let uminVal64 = UInt64.min
let umaxVal64 = UInt64.max
print("64 Bit in Unsigned Integer : ", uminVal64, umaxVal64)


let http404Error = ("404", "Not found")
let (statusCode, statusMsg) = http404Error;
print("status code is : ", statusCode) // or statusCode.0
print("status message is : ", statusMsg) // or statusCode.1

// This will be simplified as : let (statusCode, statusMsg) = ("404", "Not found")

let http200Status = (statusCode: 200, description: "OK")
print(http200Status.statusCode)


// MultiLine String Literals
let someString = """
    The static of the method of the line of the editor of the finally i finish this
    line in my xcode editor.
"""
var Emoji = "☺️"
print(Emoji)

func printAndCount(name: String) {
    print(name)
    print(name.count)
}

printAndCount(name: "Hari")

func findMinAndMax(array: [Int]) -> (min: Int, max: Int) {
    var minVal = array[0]; var maxVal = array[0]
    for i in 0..<array.count {
        if minVal > array[i] {
            minVal = array[i]
        }
        if(maxVal < array[i]) {
            maxVal = array[i]
        }
    }
    
    return (minVal, maxVal)
}

let result = findMinAndMax(array: [1,2,3,4,5])
print(result.min)
print(result.max)

struct Person {
    var name: String
    var age: Int
}

class People {
    var name: String = ""
    var age: Int = 0
}

var person1 = Person.init(name: "Mahesh", age: 22)
var person2 = person1
person2.name = "Kavin"

print("Person 1 : ", person1.name, person1.age)
print("Person 2 : ", person2.name, person2.age)

var people1: People = People()
people1.name = "Mahesh"
people1.age = 23

var people2: People = people1
people2.name = "Kavin"

print("People 1 : ", people1.name, people1.age)
print("People 2 : ", people2.name, people2.age)

/*
 Difference between struct and class is structure is a value type, class is a reference type.
 Structure can store a duplicate object in another variable
 Class can store a reference of a object to its.
 */



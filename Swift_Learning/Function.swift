// variadic function
func getSum(_ values: Int...) -> Int {
    var resultValue = 0
    for iterate in values {
        resultValue += iterate
    }
    
    return resultValue
}

// Function Type

func addTwoNumber(_ valOne: Int, _ valTwo: Int) -> Int {
    return valOne + valTwo
}

func productTwoNumber(_ valOne: Int, _ valTwo: Int) -> Int {
    return valOne * valTwo
}

// Here we try Closure :
var sumOfTwo: (Int, Int) -> (Int) = { $0 + $1 }
var productOfTwo: (Int, Int) -> (Int) = { $0 * $1 }

// Both are working
var calSum: (Int, Int) -> Int = sumOfTwo
var calProduct: (Int, Int) -> Int = productOfTwo

// pass function type as parameter
func calProduct(_ product: (Int, Int) -> Int, _ addOfTwo: (Int, Int) -> Int, _ a: Int, _ b: Int) -> Int{
    return product(a, b) + addOfTwo(a, b)
}

// Nested Function

func chooseStep(backward: Bool) -> (Int) -> (Int) {
    func stepForward(moveRight: Int) -> Int {
        return moveRight + 1
    }
    func stepBackward(moveLeft: Int) -> Int {
        return moveLeft - 1
    }
    return backward ? stepBackward : stepForward
}

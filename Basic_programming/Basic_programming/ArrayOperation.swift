func mergeArray(_ one: inout [Int], _ two: inout [Int]) -> [Int] {
    for num in two { one.append(num) }
    return one
}

// using Generics
func splitArrayEqualSize<T>(array one: [T]) -> ([T], [T]) {
    let halfValue = one.count / 2
    var oneOf: [T] = []; var secondOf: [T] = []
    
    for index in 0..<halfValue {
        oneOf.append(one[index])
    }
    
    for index in halfValue..<one.count {
        secondOf.append(one[index])
    }
    
    return (oneOf, secondOf)
}

func findAndReplace(array original: [Int], findBy find: Int, replaceWith replace: Int) -> [Int] {
    var originalArray = original
    for index in original.indices {
        if find == original[index] {
           originalArray[index] = replace
        }
    }
    
    return originalArray
}

func findIndexOfElement(array original: [Int], element value: Int) -> Int {
    for index in original.indices {
        if value == original[index] {
            return Int(index)
        }
    }
    return -1
}

func delete<T: Comparable>(array originalArray: [T], delete elememt: T) -> [T] {
    var originalCopy = originalArray
    for index in originalCopy.indices {
        if elememt == originalArray[index] { originalCopy.remove(at: index) }
    }
    return originalCopy
}

func insertInArray(array original: [Int], element value: Int) -> [Int] {
    var originalCpy: [Int] = []
    originalCpy += [value]
    
    for index in original.indices { originalCpy += [original[index]] }
    return originalCpy
}

let insertClosure: ([Int], Int) -> [Int] = { original, value in
    var originalCpy: [Int] = []
    originalCpy += [value]
    for index in original.indices { originalCpy += [original[index]] }
    return originalCpy
}

func insertInArray(array original: [Int], element value: Int, at positon: Int) -> [Int] {
    var resultArray: [Int] = []
    
    if positon == original.count {
        resultArray = original
        resultArray += [value]
        return resultArray
    }
    
    for index in original.indices {
        if index == positon {
            resultArray += [value]
        }
        resultArray += [original[index]]
    }
    
    return resultArray
}

func checkIsEmpty(array container: [Int]) throws -> Bool {
    
}

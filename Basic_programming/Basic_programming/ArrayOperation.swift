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

func checkIsEmpty(array container: [Int]) -> Bool {
    if container.count > 0 {
        return false
    }else {
        return true
    }
}

func isContain<T: Comparable>(array original: [T], find element: T) -> Bool {
    let contains = original.filter({ $0 == element })
    if !contains.isEmpty {
        return true
    }
    return false
}

func arrayToSet<T>(array original: [T]) -> Set<T> {
    var setHolder: Set<T> = []
    for num in original { setHolder.insert(num) }
    return setHolder
}

func setToArray<T>(array original: Set<T>) -> [T] {
    var arrayHolder: [T] = []
    for element in original { arrayHolder += [element] }
    return arrayHolder
}

func getArrayByRange<T>(array original: [T], startFrom from: Int, endWith to: Int) -> [T] {
    let sub_array = original[from...to]
    return Array(sub_array)
}




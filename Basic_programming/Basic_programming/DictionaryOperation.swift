func getValues<K,T>(Dictionary dictionary: Dictionary<K, T>) {
    for key in dictionary.keys {
        print(dictionary[key]!)
    }
}

func mergeDictionary<T>(_ dictionaryOne: Dictionary<T, T>, _ dictionaryTwo: Dictionary<T, T>) -> Dictionary<T,T> {
    var result: Dictionary<T, T> = dictionaryOne
    for key in dictionaryTwo.keys {
        let value = dictionaryTwo[key]
        result[key] = value
    }
    return result
}

//func changeValueInMap(Dictionary map: Dictionary<Int, Int>, key keyId: Int, modify_value value: Int) -> Dictionary<Int, Int> {
//    var result = map
//    if var status = result[keyId] {
//        result[keyId] = value
//    }
//    return result
//}

//func removeValueInMap(Dictionary map: Dictionary<Int, Int>, key keyId: Int) -> Dictionary<Int, Int> {
//    var result = map
//    if var status = result[keyId] {
//        result[keyId] = nil
//    }
//    return result
//}

var changeValueInMap: (Dictionary<Int, Int>, Int, Int) -> Dictionary<Int, Int> = { map, key, value  in
    var result = map
    if var status = result[key] {
        result[key] = value
    }
    return result
}

var removeValue: (Dictionary<Int, Int>, Int) -> Dictionary<Int, Int> = { map, key  in
    var result = map
    if var status = result[key] {
        result[key] = nil
    }
    return result
}

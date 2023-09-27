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

func changeValueInMap(Dictionary map: Dictionary<Int, Int>, key keyId: Int, modify_value value: Int) -> Dictionary<Int, Int> {
    var result = map
    for key in map.keys {
        if key == keyId {
            result[key] = value
        }
    }
    return result
}

func removeValueInMap(Dictionary map: Dictionary<Int, Int>, key keyId: Int) -> Dictionary<Int, Int> {
    var result = map
    for key in map.keys {
        if key == keyId {
            result[key] = nil
        }
    }
    return result
}

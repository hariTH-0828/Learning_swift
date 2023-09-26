func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    var hashMap: Dictionary<Character, Int> = [:]
    var count: Int = 0
    
    for iterator in stones {
        if(hashMap.keys.contains(iterator)) {
            let value = hashMap[iterator]
            hashMap[iterator] = value! + 1
        }else {
            hashMap[iterator] = 1
        }
    }
    
    for iterator in hashMap.keys {
        if(jewels.contains(iterator)) {
            count += hashMap[iterator]!
        }
    }
    
    return count
}

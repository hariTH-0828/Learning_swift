func stringToChar(_ words: String) -> [Character] {
    var charSet: [Character] = []
    
    for iterator in words { charSet.append(iterator) }
    return charSet
}

func splitWithRange(string word: String, range to: Int) -> [String] {
    var wordSet: [String] = []
    var subString: String = ""; var count: Int = 0
    
    for iterator in word {
        if(count == to) {
            wordSet.append(subString)
            subString.removeAll(); count = 0
        }
        subString.append(iterator)
        count += 1
    }
    wordSet.append(subString)
    return wordSet
}

func mergeTwoString(one wordOne: String, another wordTwo: String) -> String {
    return wordOne + wordTwo
}

func findAndReplace(string word: String, find findString: String, replace replaceString: String) -> String {
    
    let length: Int = findString.count
    var splited_words = splitWithRange(string: word, range: length)
    
    var count = 0
    for possibilities in splited_words {
        if possibilities == findString {
            splited_words[count] = replaceString
        }
        count += 1
    }
    
    let result: String = splited_words.joined()
    return result
}

func isContains(string fighter: String, subString opponenet: String) -> Bool{
    let length = opponenet.count
    let splitted_word = splitWithRange(string: fighter, range: length)
    
    for possibilites in splitted_word {
        if possibilites == opponenet {
            return true
        }
    }
    return false
}

func capitalizeFirstLetter(_ word: String) -> String {
    var wordSet = Array(word)
    wordSet[0] = Character(wordSet[0].uppercased())
    
    return String(wordSet)
}

func capitalizeAllChar(_ word: String) -> String {
    var wordSet = Array(word); var index = 0
    for char in word {
        if(char.isLetter && char.asciiValue! >= 97) {
            let charId = char.asciiValue! - 32
            wordSet[index] = Character(UnicodeScalar(charId))
        }
        index += 1
    }
    return String(wordSet)
}

func removeWhiteSpaces(_ word: String) -> String {
    var resultString: String = ""
    for char in word {
        if(char != " ") { resultString = resultString + String(char) }
    }
    
    return resultString
}

func stringToInt(_ word: String) -> [Int] {
    var resultSet: [Int] = []
    
    for char in word {
        resultSet.append(Int(char.asciiValue!))
    }
    
    return resultSet
}

func integerToString(_ intArray: [Int]) -> String {
    var resultSet: String = ""
    
    for value in intArray {
        let unsignedInt: UInt8 = UInt8(value)
        resultSet.append(Character(UnicodeScalar(unsignedInt)))
    }
    
    return String(resultSet)
}



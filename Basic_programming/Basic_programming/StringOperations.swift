func stringToChar(_ words: String) -> [Character] {
   /* 
        var charSet: [Character] = []
        for iterator in words { charSet.append(iterator) }
    */
    return Array(words)
}

func splitWithRange(string word: String, range to: Int) -> [String] {
    let character_array = Array(word)
    var stringArray: [String] = []
    for index in character_array.indices {
        if index <= character_array.count - to {
            let sub_word = String(character_array[index..<index+to])
            stringArray.append(sub_word)
        }
    }
    return stringArray
}

func trim(string word: String, character exceptChar: String) -> String {
    let trimmedString = word.map { char in
        exceptChar.contains(char) ? " " : String(char)
    }.joined()
    return trimmedString
}

func mergeTwoString(one wordOne: String, another wordTwo: String) -> String {
    return wordOne + wordTwo
}

func findAndReplace(wordToFind: String, replacement: String, in originalString: String) -> String {
    let modifiedString = originalString.replacing(wordToFind, with: replacement)
    return modifiedString
}

func isContains(string fighter: String, subString opponent: String) -> Bool{
    /* let length = opponenet.count
    let splitted_word = splitWithRange(string: fighter, range: length)
    
    for possibilites in splitted_word {
        if possibilites == opponenet {
            return true
        }
    }
    return false */
    
    if fighter.contains(opponent) {
        return true
    }else { return false }
}

func capitalizeFirstLetter(_ word: String) -> String{
    /* var wordSet = Array(word)
    wordSet[0] = Character(wordSet[0].uppercased())
    return String(wordSet) */
    let letters = word.compactMap( {$0} )
    return letters[0].uppercased() + letters[1..<letters.count]
}

func capitalizeAllChar(_ word: String) -> String {
    /* var wordSet = Array(word); var index = 0
    for char in word {
        if(char.isLetter && char.asciiValue! >= 97) {
            let charId = char.asciiValue! - 32
            wordSet[index] = Character(UnicodeScalar(charId))
        }
        index += 1
    }
    return String(wordSet) */
    let letters = word.map { char in
        char.isLetter ? char.uppercased() : String(char)
    }.joined()
    return letters
}

func removeWhiteSpaces(_ word: String) -> String {
    /* for char in word {
        if(char != " ") { resultString = resultString + String(char) }
    } */
    return word.filter({!$0.isWhitespace})
}

func stringToInt(_ word: String) -> [UInt8] {
    /* var resultSet: [Int] = []
    for char in word {
        resultSet.append(Int(char.asciiValue!))
    }
    return resultSet */
    let charIntArray = word.compactMap { $0.asciiValue }
    return charIntArray
}

func integerToString(_ UintArray: [UInt8]) -> String{
    /* var resultSet: String = ""
    for value in intArray {
        let unsignedInt: UInt8 = UInt8(value)
        resultSet.append(Character(UnicodeScalar(unsignedInt)))
    }
    return String(resultSet) */
    let word = String(UintArray.map { Character(UnicodeScalar($0)) })
    return word
}

func deleteSuffix(string word: String, suffix endWith: String) -> String {
    /* var result_string = ""; let range = word.count - endWith
    
    if endWith > word.count {
        return "Range out of bound"
    }
    
    var index = 0
    for str in word {
        if index == range { break }
        result_string += String(str)
        index += 1
    }
    return result_string */
    if word.hasSuffix(endWith) {
        return word.replacing(endWith, with: "")
    }
    return "endWith is not present with string"
}

func appendSuffix(string word: String, suffix substring: String) -> String {
    /* var result = word
    for char in substring { result += String(char) }
    return result */
    return word + substring
}

func appendPrefix(string word: String, prefix substring: String) -> String {
    /* var result = substring
    for char in word { result += String(char) }
    return result */
    return substring + word
}

func deletePrefix(string word: String, prefix startWith: String) -> String {
    /* var wordSet = Array(word); let limit = (word.count - endWith) - 1
    for index in stride(from: word.count - 1, to: limit, by: -1) {
        wordSet.remove(at: index)
    }
    return String(wordSet) */
    if word.hasPrefix(startWith) {
        return word.replacing(startWith, with: "")
    }
    return "startWith is not matching with string"
}

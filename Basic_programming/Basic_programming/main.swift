// Split a string into char
var char_sets = stringToChar("String")
print(char_sets)

// split a string with range
var split_with_range = splitWithRange(string: "Hariharan", range: 2)
print(split_with_range)

// Merge a String
var merge_string = mergeTwoString(one: "Hello", another: " World")
print(merge_string)

// Find and Replace
var findNReplace = findAndReplace(wordToFind: "ha", replacement: "th", in: "Hariha")
print(findNReplace)

// Check contains a substring
var isPresent = isContains(string: "Hariharan", subString: "Hari")
print(isPresent)

// Capitalize first letter
var capitalize_letter = capitalizeFirstLetter("hariharan")
print(capitalize_letter)

// Capitalize All Character
var capitalize_all_char = capitalizeAllChar("hello_world@gmail.com")
print(capitalize_all_char)

// Remove white space
var remove_whitespace = removeWhiteSpaces("Hello world ")
print(remove_whitespace)

// Change String to Integer
var string_to_int = stringToInt("Hello world")
print(string_to_int)

// Change Integer to String
var integer_to_string = integerToString(string_to_int)
print(integer_to_string)

// Delete a suffix
var suffix_delete = deleteSuffix(string: "Hariharan", suffix: "haran")
print(suffix_delete)

// Add a suffix
var add_suffix = appendSuffix(string: "Hari", suffix: "saravanan")
print(add_suffix)

// Add a prefix
var add_prefix = appendPrefix(string: "saravanan", prefix: "Hari")
print(add_prefix)

// Delete a prefix
var delete_prefix = deletePrefix(string: "Harisaravanan", prefix: "Hari")
print(delete_prefix)

/****  Array Operations  ****/

// Merge array
var even: [Int] = [2,4,6,8]
var odd: [Int] = [1,3,5,7,9]
var merge_array = mergeArray(&even, &odd)
print(merge_array)

// split array into equal size
var array = ["Hari", "Aji", "Vishnu", "Karthi", "Mani"]
let split_array_equal_size = splitArrayEqualSize(array: array)
print(split_array_equal_size)

// Find and Replace value in array
let intArray = [1,2,3,7,8,9]
var find_and_replace = findAndReplace(array: intArray, findBy: 7, replaceWith: 4)
print(find_and_replace)

// Find index of an array
var findIndex = findIndexOfElement(array: intArray, element: 7)
print(findIndex)

// Delete element in array
var deleteElement = delete(array: intArray, delete: 7)
print(deleteElement)

// Insert element in array
//var insertElement = insertInArray(array: intArray, element: 0)
var insertElement = insertClosure(intArray, 0)
print(insertElement)

// Insert element in array at given position
var insertElementAt = insertInArray(array: intArray, element: 4, at: 3)
print(insertElementAt)

// Check is empty or null
let emptyArray: [Int] = []
var check_isEmpty = checkIsEmpty(array: intArray)
print(check_isEmpty)

// Check element is contain or not
var checkIsContain = isContain(array: intArray, find: 7)
print(checkIsContain)

// creating set and convert set to array and array to set
var arrayHolder: [Int] = [1,2,3,1,4,2]
let convertToSet = arrayToSet(array: arrayHolder)
print(convertToSet)
let convertToArray = setToArray(array: convertToSet)
print(convertToArray)

//var filterResult = arrayHolder.filter({ element in return element == 1 })
//print(filterResult)

// Subscripting of an array with range
var getSubArray = getArrayByRange(array: intArray, startFrom: 0, endWith: 3)
print(getSubArray)
var intArrayCopy = intArray
intArrayCopy.insert(contentsOf: [4,5,6], at: 3)
print(intArrayCopy)

/**** Dictionary operation **/

// create a dictionary and insert value and keys
var intDictionary: Dictionary<Int, Int> = [:]  // Initialize the dictionary in a variable

// insert key and values in a dictionary
intDictionary[1] = 1000
intDictionary[2] = 2000
intDictionary[3] = 3000

var stringDictionary: Dictionary<Character, String> = [:]
stringDictionary["a"] = "Arun"
stringDictionary["b"] = "Bala"
stringDictionary["c"] = "Charan"

getValues(Dictionary: stringDictionary)

var secondDic: Dictionary<Int, Int> = [
    4: 4000,
    5: 5000,
    6: 6000
]
var dictionary_merge = mergeDictionary(intDictionary, secondDic)
print(dictionary_merge)

dictionary_merge = changeValueInMap(dictionary_merge, 6, 7000)
print(dictionary_merge)

dictionary_merge = removeValue(dictionary_merge, 6)
print(dictionary_merge)

var myName = "Hariharan.R.S"
let trimmedName = trim(string: myName, character: ".")
print(trimmedName)

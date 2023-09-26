// Split a string into char
var char_sets = stringToChar("String")
print(char_sets)

// split a string with range
var split_with_range = splitWithRange(string: "Hariharan", range: 1)
print(split_with_range)

// Merge a String
var merge_string = mergeTwoString(one: "Hello", another: " World")
print(merge_string)

// Find and Replace
var replace_word = findAndReplace(string: "Hariha", find: "ha", replace: "th")
print(replace_word)

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
var string_to_int: [Int] = stringToInt("Hello world")
print(string_to_int)

// Change Integer to String
var integer_to_string = integerToString(string_to_int)
print(integer_to_string)

// Delete a suffix
var suffix_delete = deleteSuffix(string: "Hariharan", prefix: 0)
print(suffix_delete)

// Add a suffix
var add_suffix = appendSuffix(string: "Hari", prefix: "saravanan")
print(add_suffix)

// Add a prefix
var add_prefix = appendPrefix(string: "saravanan", prefix: "Hari")
print(add_prefix)

// Delete a prefix
var delete_prefix = deletePrefix(string: "Harith", prefix: 2)
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
let intArray = [1,2,3,7,5,6]
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
var check_isEmpty = try checkIsEmpty(array: emptyArray)
print(check_isEmpty)

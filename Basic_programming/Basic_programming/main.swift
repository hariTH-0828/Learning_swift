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

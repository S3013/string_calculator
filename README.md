# string_calculator
 TDD Assessment


This is sample String Calculator implementation in dart, Designed to performs addition of numbers based on the input string. 
It also support custom delimiters, and throw exceptions for negative numbers.


# How it Works.

The Add function takes a string as input, The String can be,
Contain numbers separated by commas or newlines.
1. Have a custom delimiter, starting with //, 
2. followed by one or more delimiters enclosed in square brackets [].

Example-
1. Basic Example - comma separated-
""
Result- 0
"1"
Result- 1
"1,5"
Result- 6

2. New line with delimiters-
"1\n2,3"
Result- 6

3. Custom Delimiters-
"//;\n1;2"
Result- 3

# Handling Errors

If input is negative numbers, the **add** function  throws a exception.
1. "1,-2,3"
Result- Negative numbers not allowed: -2

# Running Test

The Project include a set of  unit tests to validate  the implementation
The test are written using TDD - Test Driven Development Methodology.

Test Cases- 

Empty String - Return 0

input- ''
output- 0

Single String

input-"1"
output- 1

Two number separated by commas.

input- 1,5
output- 6

NewLine as Delimiters

Input- "1\n2,3"
Output- 6

Custom Delimiters

Input- "//;\n1;2"
Output- 3

Negative numbers

Input- "1,-2,3"
Output- Throws FormatException('Negative numbers not allowed: -2')


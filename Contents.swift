import UIKit

//throw an error using the throwing function.
enum MyNewError: Error {
   case invalidInput
   case fileNotFound
   case networkError
}

// Throwing Function
func processData(_ enterValue: String) throws {
   guard !enterValue.isEmpty else {
      throw MyNewError.invalidInput
   }
}

// Handling errors
do {

   // Calling throwing function
   try processData("")
   print("Successful")
} catch MyNewError.invalidInput {
   print("Invalid input")
} catch {
   print("Unexpected error occurred: \(error)")
}


//disable error propagation.
// Set of errors
enum myNewError: Error {
   case divisionByZero
   case invalidInput
}

// Throwing function
func divideNum(_ dividend: Int, by divisor: Int) throws -> Int {
   guard divisor != 0 else {
      throw myNewError.divisionByZero
   }

   return dividend / divisor
}

// Here we're sure that the divisor is not zero,
// so we use try! to disable error propagation.
let output = try! divideNum(10, by: 2)

print(output)


//handle errors using do-catch blocks.
// Set of errors
enum myNewError2: Error {
   case divisionByZero
   case invalidInput
}

// Throwing function
func divideNum2(_ dividend: Int, by divisor: Int) throws -> Int {
   guard divisor != 0 else {
      throw myNewError2.divisionByZero
   }
   return dividend / divisor
}

// Handling error using do-catch statement
do {
   let result = try divideNum2(10, by: 0)
   print("Result of division: \(result)")
} catch myNewError2.divisionByZero {
   print("Found Error: Cannot divide by zero.")
} catch myNewError2.invalidInput {
   print("Found Error: Input is not valid.")
} catch {
   print("An unexpected error occurred: \(error)")
}


//convert errors to optional values.
// Set of errors
enum myNewError3: Error {
   case divisionByZero
   case invalidInput
}

// Throwing function
func divideNum3(_ dividend: Int, by divisor: Int) throws -> Int {
   guard divisor != 0 else {
      throw myNewError.divisionByZero
   }

   return dividend / divisor
}



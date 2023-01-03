func getArray(_ input: [Int]?) -> Int { return input?.randomElement() ?? Int.random(in: 1...100) }
print(getArray(nil))       // This prints a random number.
print(getArray([0, 1]))    // This prints 0 or 1.


let array: [Int]? = nil
let getArray = array?.randomElement() ?? Int.random(in: 1...100)
print(getArray) 

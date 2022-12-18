import Foundation

let start = CFAbsoluteTimeGetCurrent()
for i in 1...100{
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    }
    else if i.isMultiple(of: 3){
        print("Fizz")
    }
    else if i.isMultiple(of: 5){
        print("Buzz")
    }
    else{
        print(i)
    }
}
// if i%3==0  ---> i.isMultiple(of:3)

let diff = CFAbsoluteTimeGetCurrent() - start



import Foundation

let start1 = CFAbsoluteTimeGetCurrent()

for i in 1...100{
    switch (i.isMultiple(of: 3),i.isMultiple(of: 5)){
       case(true,false):
        print("Fizz")
        
    case(false,true):
     print("Buzz")

        
    case(true,true):
     print("FizzBuzz")
        
    default:
        print(i)

        
    }
}
let diff1 = CFAbsoluteTimeGetCurrent() - start1




let start2 = CFAbsoluteTimeGetCurrent()

let fizzbuzz:(Int)->String = { i in
    switch (i.isMultiple(of: 3),i.isMultiple(of: 5)){
       case(true,false):
        return "Fizz"
        
    case(false,true):
     return "Buzz"

        
    case(true,true):
     return "FizzBuzz"
        
    default:
        return "\(i)"

        
    }
}

Array(1...100).map(fizzbuzz).joined(separator: ",")

let diff2 = CFAbsoluteTimeGetCurrent() - start2

print("Loops Took \(diff) seconds")
print("Switch Took \(diff1) seconds")
print("Map Took \(diff2) seconds")

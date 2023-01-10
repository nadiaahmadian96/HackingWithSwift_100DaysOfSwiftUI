///guard is designed exactly for this style of programming, and in fact does two things to help:
///1.If you use guard to check a function’s inputs are valid, Swift will always require you to use return if the check fails.
///2.If the check passes and the optional you’re unwrapping has a value inside, you can use it after the guard code finishes.

func printSquare(of number : Int?){
    guard let number = number else{
        print("Missing input")
        //1:
        return
    }
    //2:
    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: 8)


///You can use guard with any condition, including ones that don’t unwrap optionals. For example, you might use
///guard someArray.isEmpty else { return }

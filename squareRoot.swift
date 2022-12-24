enum squareError : Error{
    case outOfBounds , noRoot
}

func sqrt(_ number : Int) throws -> Int{
    
    if number < 1 || number > 10000{
        throw squareError.outOfBounds
    }
    
    for i in 1...100{
        if number == i*i{
             return i
        }
    }
    
    throw squareError.noRoot
}


let input  = 100000000

do {
    let result = try sqrt(input)
    print(result)
} catch squareError.outOfBounds{
    print("\(squareError.outOfBounds)")
}catch squareError.noRoot{
    print("\(squareError.noRoot)")
}catch {
    print("Error")
}

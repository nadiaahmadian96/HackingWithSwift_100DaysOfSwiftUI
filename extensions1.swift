///self refers to the current value, and Self refers to the current type.
extension Numeric{
    func squared() -> Self{
        self * self
    }
}

let wholeNumber = 5.5
print(wholeNumber.squared())

struct User : Equatable{
    let name : String
}

let user1 = User(name: "Link")
let user2 = User(name: "Zelda")

print(user1 == user2)
print(user1 != user2)

///there’s a Swift protocol called Comparable, which allows Swift to see if one object should be sorted before another. Swift can’t automatically implement this in our custom types, but it’s not hard: you need to write a function called < that accepts two instances of your struct as its parameter, and returns true if the first instance should be sorted before the second.


struct User1 : Equatable ,Comparable{
    let name : String
}

func <(lhs : User1 , rhs : User1) -> Bool{
    lhs.name < rhs.name
}

let user12 = User1(name: "Taylor")
let user22 = User1(name: "Adele")
print(user12 < user22)

print(user12 <= user22)
print(user12 > user22)
print(user12 >= user22)

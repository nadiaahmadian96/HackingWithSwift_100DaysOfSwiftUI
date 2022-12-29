///Both Int and Bool conform to a common Swift protocol called Equatable, which means “can be compared for equality.” The Equatable protocol is what allows us to use ==, like this:
func getRandomNumber()->Int{
    Int.random(in: 1...6)
}

func getRandomBool()->Bool{
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

///Because both of these types conform to Equatable, we could try amending our function to return an Equatable value.
///you can return protocols from functions, and often it’s a really helpful thing to do.

///This is where opaque return types come in: they let us hide information in our code, but not from the Swift compiler. This means we reserve the right to make our code flexible internally so that we can return different things in the future, but Swift always understands the actual data type being returned and will check it appropriately.

func getRandomNumberE()->some Equatable{
    Int.random(in: 1...6)
}

func getRandomBoolE()->some Equatable{
    Bool.random()
}

print(getRandomNumberE() == getRandomNumberE())

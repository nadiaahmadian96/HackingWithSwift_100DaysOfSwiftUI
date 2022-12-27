//Initializers are specialized methods that are designed to prepare a new struct instance to be used.Swift silently generates one for us based on the properties we place inside a struct, but you can also create your own as long as you follow one golden rule: all properties must have a value by the time the initializer ends.

struct Player{
    let name : String
    let number : Int
}


//memberwise initializer -> an initializer that accepts each property in the order it was defined.
let player = Player(name: "Kobe", number: 24)


//as soon as you implement your own custom initializers you’ll lose access to Swift’s generated memberwise initializer unless you take extra steps to retain it.
struct Player1{
    let name : String
    let number : Int
    
    //This works the same as our previous code, except now the initializer is owned by us so we can add extra functionality there if needed.
    init(name:String , number : Int){
        self.name = name
        self.number = number
    }
}


struct Player2{
    let name : String
    let number : Int
    
    //This works the same as our previous code, except now the initializer is owned by us so we can add extra functionality there if needed.
    init(name:String){
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player2 = Player2(name: "Megan R")
print(player2.number)


//How to limit access to internal data using access control


struct BankAccount{
    var funds = 0
    
    mutating func deposit(amount : Int){
        funds += amount
    }
    
    mutating func withdraw(amount:Int)->Bool{
        if funds >= amount{
            funds -= amount
            return true
        }else{
            return false
        }
    }
}


var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}


//This completely bypasses the logic we put in place to stop people taking out more money than they have, and now our program could behave in weird ways.

account.funds -= 1000
print(account.funds)



struct BankAccount1{
    //This is called access control
    private(set) var funds = 0
    
    mutating func deposit(amount : Int){
        funds += amount
    }
    
    mutating func withdraw(amount:Int)->Bool{
        if funds >= amount{
            funds -= amount
            return true
        }else{
            return false
        }
    }
}


var account1 = BankAccount1()
account1.deposit(amount: 100)
let success1 = account1.withdraw(amount: 200)

if success1 {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

//account1.funds -= 1000  -> this is inaccessible :D so the problem is solved
print(account1.funds)

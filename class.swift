///This is where Swift enforces a simple rule: if a child class wants to change a method from a parent class, you must use override in the child class’s version. This does two things:
///If you attempt to change a method without using override, Swift will refuse to build your code. This stops you accidentally overriding a method.
///If you use override but your method doesn’t actually override something from the parent class, Swift will refuse to build your code because you probably made a mistake.

class Employee{
    let hours : Int
    
    init(hours : Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day.")
        }
    }



class Developer : Employee{
    func work(){
        print("I'm writing code for \(hours) hours.")
    }
    override func printSummary(){
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
        }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}


let Nadia = Developer(hours: 100)
let Nad = Manager(hours: 17)

Nadia.work()
Nadia.printSummary()
Nad.work()
Nad.printSummary()

///if a child class has any custom initializers, it must always call the parent’s initializer after it has finished setting up its own properties, if it has any.


class Vehicle{
    let isElectric : Bool
    
    init(isElectric: Bool){
        self.isElectric = isElectric
    }
}

class car : Vehicle{
    let isConvertible : Bool
    
    init( isElectric: Bool,isConvertible : Bool){
        self.isConvertible = isConvertible
        ///super is another one of those values that Swift automatically provides for us, similar to self: it allows us to call up to methods that belong to our parent class, such as its initializer. You can use it with other methods if you want; it’s not limited to initialize
        super.init(isElectric: isElectric)
    }
}


let teslaX = car(isElectric: true, isConvertible: false)


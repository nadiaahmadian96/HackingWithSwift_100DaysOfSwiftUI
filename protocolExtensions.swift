let guests = ["Mario, Luigi", "Peach"]

if !guests.isEmpty {
    print(guests.count)
}

//extension Array {
//    var isNotEmpty : Bool {
//        isEmpty == false
//    }
//}


/// Array, Set, and Dictionary all conform to a built-in protocol called Collection, through which they get functionality such as contains(), sorted(), reversed(), and more.

extension Collection{
    var isNotEmpty : Bool{
        isEmpty == false
    }
}
if guests.isNotEmpty {
    print(guests.count)
}


///technique Apple calls protocol-oriented programming – we can list some required methods in a protocol, then add default implementations of those inside a protocol extension. All conforming types then get to use those default implementations, or provide their own as needed.
protocol Person{
    var name : String {get}
    func sayHello()
}

extension Person{
    func sayHello(){
        print("Hello! I'm \(name)")
    }
}

///Now conforming types can add their own sayHello() method if they want, but they don’t need to – they can always rely on the one provided inside our protocol extension.

struct Employee : Person{
    let name : String
}

let employee7 = Employee(name: "Nadia")
employee7.sayHello()

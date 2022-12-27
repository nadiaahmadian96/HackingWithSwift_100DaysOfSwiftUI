///In the case of structs that means the data is being destroyed, but in the case of classes it means only one copy of the underlying data is going away – there might still be other copies elsewhere. But when the final copy goes away – when the last constant or variable pointing at a class instance is destroyed – then the underlying data is also destroyed, and the memory it was using is returned back to the system.


class User{
    let id : Int
    
    init(id : Int){
        self.id = id
        print("I'm Alive")
    }

    deinit{
        print("I'm Dead")
    }
}

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}


///Remember, the deinitializer is only called when the last remaining reference to a class instance is destroyed. This might be a variable or constant you have stashed away, or perhaps you stored something in an array.

///For example, if we were adding our User instances as they were created, they would only be destroyed when the array is cleared:

var users = [User]()
for i in 1...3{
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}
print("Loop is finished!")
users.removeAll()
print("Array is clear!")

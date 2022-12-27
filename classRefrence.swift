class User{
    var username = "Nadia"
}

var user1 = User()
var user2 = user1
user2.username = "Nad"

///it’s what allows us to share common data across all parts of our app.
print(user1.username)
print(user2.username)


///In comparison, structs do not share their data amongst copies
struct UserS{
    var username = "Nadia"
}

var user1s = UserS()
var user2s = user1s
user2s.username = "Nad"

print(user1s.username)
print(user2s.username)

///If you want to create a unique copy of a class instance – sometimes called a deep copy – you need to handle creating a new instance and copy across all your data safely.


class UserWithUniqueCopy{
    var username = "Unique Nad"
    
    func copy() -> UserWithUniqueCopy{
        let user = UserWithUniqueCopy()
        user.username = username
        return user
    }
}

var user1C = UserWithUniqueCopy()
var user2C = user1C.copy()
user2C.username = "Nad"

print(user1C.username)
print(user2C.username)

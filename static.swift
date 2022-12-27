///sometimes – only sometimes – you want to add a property or method to the struct itself, rather than to one particular instance of the struct, which allows you to use them directly. you can use this technique with SwiftUI for two things: creating example data, and storing fixed data that needs to be accessed in various places. -> static properties and methods


struct School {
    static var studentCount = 0
    
    static func add(student : String){
        print("\(student) joined the school")
        studentCount += 1
    }
}

///I haven’t created an instance of School – we can literally use add() and studentCount directly on the struct. This is because those are both static, which means they don’t exist uniquely on instances of the struct.
///

School.add(student: "Sheldon Cooper")
print(School.studentCount)

///If you want to mix and match static and non-static properties and methods, there are two rules:
///To access non-static code from static code… you’re out of luck: static properties and methods can’t refer to non-static properties and methods because it just doesn’t make sense – which instance of School would you be referring to?
///To access static code from non-static code, always use your type’s name such as School.studentCount. You can also use Self to refer to the current type.
///Now we have self and Self, and they mean different things: self refers to the current value of the struct, and Self refers to the current type.

//I use static properties to organize common data in my apps. For example, I might have a struct like AppData to store lots of shared values I use in many places:

struct AppData{
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://nadiaahmadian96.github.io/cv/"
}

//The second reason I commonly use static data is to create examples of my structs.

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

//And now whenever you need an Employee instance to work with in your design previews, you can use Employee.example and you’re done.

func test(){
    print("Test")
}
test()



var testCopy = test
testCopy()


//Closures
let test2 = {
    print("Test")
}
test2()


//Closure with parameters
//When u wanna add parameters for closures u gotta use in keyword and it is used to mark the end of the parameters and return type

let test3 = {(number : Int) -> String in
    "Test\(number)"
}
print(test3(3))

//func & closure differences
//external parameter names only matter when we’re calling a function directly, not when we create a closure or when we take a copy of the function first.



func getUserData(for id: Int) -> String{
    if id == 7{
        return "Nadia Rocks!"
    }else{
        return "Who cares if it's not Nadia!"
    }
}

let data:(Int)->String = getUserData
let user = data(7)
print(user)



let team = ["Nadia","Harley Quinn","Batman","Coraline","Wednesday"]
let sortedTeam = team.sorted()
print(sortedTeam)

//That’s really neat, but what if we wanted to control that sort

//So, if the first name is Nadia, return true so that name1 is sorted before name2. On the other hand, if name2 is Nadia, return false so that name1 is sorted after name2. If neither name is Nadia, just use < to do a normal alphabetical sort.

func CaptainFirstSorted(name1: String , name2:String)->Bool{
    if name1 == "Nadia"{
        return true
    }else if name2 == "Nadia"{
        return false
    }
    return name1<name2
}

//we’re able to pass functions into other functions, just like we passed
let captainFirstTeam = team.sorted(by: CaptainFirstSorted)
print(captainFirstTeam)

//calls sorted() using a closure:
let captainFirstTeam1 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Nadia" {
        return true
    } else if name2 == "Nadia" {
        return false
    }
    return name1 < name2
})

print(captainFirstTeam1)
//functions like sorted() let us pass in custom code to adjust how they work, and do so directly – we don’t need to write out a new function just for that one usage.

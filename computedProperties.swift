struct Employee{
    let name : String
    var vacationRemaining : Int
    
    mutating func takeVacations(days : Int){
        if vacationRemaining > days {
            vacationRemaining -= days
        }else{
            print("Oops! There aren't enough days remaining.")
        }
    }
}


var archer = Employee(name: "A", vacationRemaining: 14)

archer.takeVacations(days: 5)
print(archer.vacationRemaining)

//simplified version

struct Employee1{
    let name : String
    var vacationRemaining : Int
}

var archer1 = Employee1(name: "A", vacationRemaining: 14)
archer1.vacationRemaining -= 5
print(archer1.vacationRemaining)

//we’re losing valuable information in the simplified version above – we’re assigning this employee 14 days of vacation then subtracting them as days are taken, but in doing so we’ve lost how many days they were originally granted.


struct Employee2{
    let name : String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining : Int {
        vacationAllocated-vacationTaken
    }
}

var archer2 = Employee2(name: "A",vacationAllocated: 14)
archer2.vacationTaken += 5
print(archer2.vacationRemaining)

//This is really powerful stuff: we’re reading what looks like a property, but behind the scenes Swift is running some code to calculate its value every time.We can’t write to it, though, because we haven’t told Swift how that should be handled.


struct Employee3{
    let name : String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining : Int {
        get{
            vacationAllocated-vacationTaken
        }
        set {
            //newValue – that’s automatically provided to us by Swift, and stores whatever value the user was trying to assign to the property.
            
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer3 = Employee3(name: "A",vacationAllocated: 14)
archer3.vacationTaken += 5
archer3.vacationRemaining = 4
print(archer3.vacationAllocated)

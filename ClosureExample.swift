//the filter() function lets us run some code on every item in the array, and will send back a new array containing every item that returns true for the function.
let team = ["Nadia","Naruto","Neville Longbottom","Nami","Nezuko","Albus Dumbledore","Bruce Wayne","Charlie Brown","Luffy","Zoro","Sanji"]
let nOnly  = team.filter {
    $0.hasPrefix("N")
}
print(nOnly)


//the map() function lets us transform every item in the array using some code of our choosing, and sends back a new array of all the transformed items:

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

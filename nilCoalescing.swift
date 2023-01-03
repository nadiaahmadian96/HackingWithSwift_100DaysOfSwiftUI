/// third way of unwrapping optionals is called the nil coalescing operator and it lets us unwrap an optional and provide a default value if the optional was empty.
let captains = [
    "Going Merry": "Monkey D. Luffy",
    "Miss Love Duck": "Alvida",
    "Victory Hunter": "Masira"
]
///That will read the value from the captains dictionary and attempt to unwrap it. If the optional has a value inside it will be sent back and stored in new, but if it doesn’t then “N/A” will be used instead.
let new = captains["Ace"] ?? "N/A"

let new1 = captains["Serenity", default: "N/A"]

///That produces exactly the same result, which might make it seem like the nil coalescing operator is pointless. However, not only does the nil coalescing operator work with dictionaries, but it works with any optionals.

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

//or

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

//or

let input = ""
let number = Int(input) ?? 0
print(number)

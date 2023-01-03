let names = ["Arya", "Bran", "Robb", "Sansa"]
///Optional chaining allows us to say “if the optional has a value inside, unwrap it then…” and we can add more code. In our case we’re saying “if we managed to get a random element from the array, then uppercase it.” Remember, randomElement() returns an optional because the array might be empty.
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

//or

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
var book1 : Book? = Book(title: "test", author: "test")
var book2 : Book? = Book(title: "test", author: " test")
///So, it reads “if we have a book, and the book has an author, and the author has a first letter, then uppercase it and send it back, otherwise send back A”.
let author = book?.author?.first?.uppercased() ?? "A"
let author1 = book1?.author?.first?.uppercased() ?? "A"
let author2 = book2?.author?.first?.uppercased() ?? "A"
print(author)
print(author1)
print(author2)

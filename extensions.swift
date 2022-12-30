///Xcode brings up a list of methods on the string, including all the ones we add in extensions. This makes our extra functionality easy to find.

///Writing global functions makes your code rather messy – they are hard to organize and hard to keep track of. On the other hand, extensions are naturally grouped by the data type they are extending.

///Because your extension methods are a full part of the original type, they get full access to the type’s internal data. That means they can use properties and methods marked with private access control, for example.

///What’s more, extensions make it easier to modify values in place – i.e., to change a value directly, rather than return a new value.
import UIKit
import Foundation

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

///Having to call trimmingCharacters(in:) every time is a bit wordy, so let’s write an extension to make it shorter:
extension String {
    func trimmed()->String{
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines : [String]{
        self.components(separatedBy: .newlines)
    }
}

func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}

let trimmed2 = quote.trimmed()
let trimmed3 = trim(quote)

///You can also use extensions to add properties to types, but there is one rule: they must only be computed properties, not stored properties.

let lyrics = """
This is a requiem for the harlequin
The great pretender crashing down with style
Here's to the fall of man
Fame to dust, fortune to sand
The great surrender finally arrived
This is how the requiem loves the harlequin
Wake up, your chains are porcelain
Like a phoenix from the ashes, we will rise again
This is what the requiem loves to hear you sing
To the beat of your fool heart hammering
One more time we'll cry into the night again, oh
"""

print(lyrics.lines.count)


///So, if we wanted our Book struct to have the default memberwise initializer as well as our custom initializer, we’d place the custom one in an extension!

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let book = Book(title: "Bad Blood", pageCount: 200)
let book1 = Book(title: "The Third Door", pageCount: 400, readingHours: 10)



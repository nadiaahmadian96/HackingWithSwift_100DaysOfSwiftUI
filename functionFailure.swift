///When we call a function that might throw errors, we either call it using try and handle errors appropriately, or if we’re certain the function will not fail we use try! and accept that if we were wrong our code will crash


///However, there is an alternative: if all we care about is whether the function succeeded or failed, we can use an optional try to have the function return an optional value. If the function ran without throwing any errors then the optional will contain the return value, but if any error was thrown the function will return nil. This means we don’t get to know exactly what error was thrown, but often that’s fine – we might just care if the function worked or not.


enum UserError : Error{
    case badID , networkFailed
}

func getUser(id : Int) throws -> String{
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

///If you want, you can combine try? with nil coalescing, which means “attempt to get the return value from this function, but if it fails use this default value instead.”

let user1 = (try? getUser(id: 23)) ?? "Anonymous"
print(user1)

///You’ll find try? is mainly used in three places:
///1. In combination with guard let to exit the current function if the try? call returns nil.
///2. In combination with nil coalescing to attempt something or provide a default value on failure.
///3. When calling any throwing function without a return value, when you genuinely don’t care if it succeeded or not – maybe you’re writing to a log file or sending analytics to a server, for example.

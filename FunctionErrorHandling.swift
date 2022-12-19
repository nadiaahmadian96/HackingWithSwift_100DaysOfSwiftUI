enum PasswordError : Error{
    case short, obvious
}

func checkpassword(_ password : String) throws -> String{
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345"{
        throw PasswordError.obvious
    }
    if password.count < 8 {
        return "OK"
    }else if password.count < 8{
        return "Good"
    }else{
        return "Excellent"
    }
}

let string = "12345"
do{
    let result = try checkpassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short{
    print("Please use a longer password")
}catch PasswordError.obvious{
    print("I have the same combination on my luggage!")
}catch {
    print("There was an error:\(error)")
}

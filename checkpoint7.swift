class Animal{
    var legs : Int
    
    init(legs : Int){
        self.legs = legs
    }
}

class Dog:Animal{
    
    func dogSpeak(){
        print("Woof!")
    }
}

class Cat:Animal{
    var isTame : Bool
    
    init(isTame: Bool, legs:Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func catSpeak(){
        print("Meow!")
    }
}

class Corgi : Dog{
    override func dogSpeak(){
        print("Corgi Woof!")
    }
}

class Poodle : Dog{
    override func dogSpeak(){
        print("Poodle Woof!")
    }
}

class Persian : Cat{
    override func catSpeak(){
        print("Persian Meow!")
    }
    
}
class Lion : Cat{
    override func catSpeak(){
        print("Lion Meow!")
    }
}

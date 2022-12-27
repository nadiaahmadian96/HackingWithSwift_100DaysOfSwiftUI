//With property observers we can attach function calls directly to the property using didSet, so that whenever it changes – wherever it changes – we will always run some code.

struct Game {
    var score = 0 {
        didSet{
            print("old score is \(oldValue)")

            print("Score is now \(score)")
        }
    }
}
//If you want it, Swift automatically provides the constant oldValue inside didSet, in case you need to have custom functionality based on what you were changing from.

var game = Game()
game.score += 10
game.score += 10
game.score -= 30
game.score += 1
game.score += 10


//There’s also a willSet variant that runs some code before the property changes, which in turn provides the new value that will be assigned in case you want to take different action based on that.

struct App{
    var contacts = [String](){
        willSet{
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet{
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}


var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

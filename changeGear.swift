struct Car{
     let model : String
     let numberOfSeats : Int
    
    private(set) var currentGear = 1 {
        didSet{
            currentGear = min(max(currentGear,1),10)
        }
    }
    
    enum GearDirection{
        case up, down, neutral
    }
    
    mutating func changeGear(_ direction : GearDirection){
        switch direction{
        case .down : currentGear -= 1
        case .up :   currentGear += 1
        case .neutral :currentGear = 1
        }
        print("The \(model) is in gear: \(currentGear)")
    }
}


var prefect = Car(model: "Ford Prefect", numberOfSeats: 4, currentGear: 3)
prefect.changeGear(.up)
prefect.changeGear(.neutral)
prefect.changeGear(.down)

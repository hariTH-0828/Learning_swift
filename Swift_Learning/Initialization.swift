// Default property value
struct Fahrenheit {
    var temperature: Double = 32.0
}

// Initializer
struct Celsius {
    var temperature: Double
    
    init() {
        temperature = 32.0
    }
}

// Initialization Parameter
struct Square {
    var length: Int
    var width: Int
    
    init(length: Int, width: Int) {
        self.length = length
        self.width = width
    }
    
    func size() -> Int {
        return length * width
    }
}

class HoursToMin {
    private var hours: Int
    
    init(_ hours: Int) {
        self.hours = hours
    }
    
    var actionHoursToMin: Int {
        get { return hours }
        set(newHours) { hours = newHours }
    }
}



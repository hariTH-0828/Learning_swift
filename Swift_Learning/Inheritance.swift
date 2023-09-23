class Parents {
    var fatherName: String
    var motherName: String
    
    init(fatherName: String, motherName: String) {
        self.fatherName = fatherName
        self.motherName = motherName
    }
    
    func toString() -> String {
        return "Parents : \nFather name : \(fatherName) \nMother name : \(motherName)"
    }
}

class Children: Parents {
    var son: String
    var daughter: String
    
    init(fatherName: String, motherName: String, son: String, daughter: String) {
        self.son = son
        self.daughter = daughter
        super.init(fatherName: fatherName, motherName: motherName)
    }
    
    override func toString() -> String {
        return "Family : \nFather name : \(fatherName) \nMother name : \(motherName) \nSon : \(son) \nDaughter : \(daughter)"
    }
}

class Bike {
    var getGear: Int {
        get { return gear }
    }
    
    var getBrand: String {
        get { return brandName }
    }
    private var brandName: String
    private var model: String
    private var engine: Int
    private var gear: Int
    
    init(_ brandName: String, _ model: String, _ engine: Int, _ gear: Int) {
        self.brandName = brandName
        self.model = model
        self.engine = engine
        self.gear = gear
    }
    
    func toString() -> String {
        return "Bike : \nBrand name : \(brandName) \nModel : \(model) \nEngine : \(engine) \nGear : \(gear)"
    }
}

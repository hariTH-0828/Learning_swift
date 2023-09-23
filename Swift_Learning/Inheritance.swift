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

struct Bike {
    private var brandName: String
    private var model: String
    private var engine: Int
    private var gear: Int
    
    var actionGear: Int {
        get { return gear }
        set(newGear) { gear = newGear }
    }
    
    var actionBrandName: String {
        get { return brandName }
        set(newBrandName) {
            brandName = newBrandName
        }
    }
    
    var actionModel: String {
        get { return model }
        set(newModel) { model = newModel }
    }
    
    var actionEngine: Int {
        get { return engine }
        set(newEngine) { engine = newEngine }
    }
    
    init(brandName: String, model: String, engine: Int, gear: Int) {
        self.brandName = brandName
        self.model = model
        self.engine = engine
        self.gear = gear
    }
    
    func toString() -> String {
        return "Bike : \nBrand name : \(brandName) \nModel : \(model) \nEngine : \(engine) \nGear : \(gear)"
    }
}

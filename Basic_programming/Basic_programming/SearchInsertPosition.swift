func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var position: Int = 0
    for iterator in nums {
        if(iterator >= target) { return position }
        else { position += 1}
    }
    return position
}

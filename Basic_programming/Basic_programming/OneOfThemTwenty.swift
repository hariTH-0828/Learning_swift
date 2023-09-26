let isOneTwenty: (Int, Int) -> Bool = { one, another in
    if(one == 20 || another == 20) { return true }
    else if(one + another >= 20) { return true }
    else { return false }
}

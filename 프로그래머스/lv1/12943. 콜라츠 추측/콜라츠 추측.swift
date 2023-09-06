func solution(_ num:Int) -> Int {
    
    var n = num
    var count : Int = 0
    while count < 500 {
        if n == 1 {
            break
        } else {
            if n % 2 == 0 {
                n = n / 2
                count += 1
            } else {
                n = n * 3 + 1
                count += 1
            }
        }

    }
    return count == 500 ? -1 : count
}
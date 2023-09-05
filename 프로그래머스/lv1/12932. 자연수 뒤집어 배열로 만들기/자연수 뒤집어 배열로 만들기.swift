func solution(_ n:Int64) -> [Int] {
    
    var arr : [Int] = []
    var num = String(n).map {Int(String($0))!}

    for i in num {
        arr.insert(i, at: 0)
    }
    return arr
}
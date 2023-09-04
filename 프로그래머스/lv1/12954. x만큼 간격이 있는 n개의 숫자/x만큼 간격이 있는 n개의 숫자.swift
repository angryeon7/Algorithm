func solution(_ x:Int, _ n:Int) -> [Int64] {
    
    var arr : [Int64] = []
    var a : Int = 0
    
    for i in 1...n {
        a += x
        arr.append(Int64(a))
    }
    
    return arr
}
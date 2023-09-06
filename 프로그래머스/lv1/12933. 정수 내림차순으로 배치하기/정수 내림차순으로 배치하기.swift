func solution(_ n:Int64) -> Int64 {
    
    var num = String(n).map {Int(String($0))!}
    num.sort(by:>)
    var result = num.map(String.init).joined()
    
    return Int64(result)!
}
func solution(_ x:Int) -> Bool {
    
    var num = String(x).map {Int(String($0))!}
    var sum : Int = 0
    for i in 0..<num.count {
        sum += num[i]
    }
    
    return x % sum == 0 ? true : false 
}
func solution(_ x:Int) -> Bool {
    
    var sum : Int = 0
    for i in String(x) {
        sum += Int(String(i))!
    }
    
    return x % sum == 0 ? true : false 
}
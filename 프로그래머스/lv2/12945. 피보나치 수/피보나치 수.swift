func solution(_ n:Int) -> Int {
    
    var num : [Int] = [0,1]
    
    for i in 1...n {
        num.append(num[i - 1] % 1234567 + num[i] % 1234567)
    }
    
    return num[n] % 1234567
}
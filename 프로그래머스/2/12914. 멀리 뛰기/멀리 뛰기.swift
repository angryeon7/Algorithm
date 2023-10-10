func solution(_ n:Int) -> Int {
    
    var num : [Int] = [1,2]

    for i in 1...n{
        num.append((num[i] + num[i - 1])%1234567) 
    }
    return num[n - 1]
    
}
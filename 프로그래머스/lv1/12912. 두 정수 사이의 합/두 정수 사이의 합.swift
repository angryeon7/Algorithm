func solution(_ a:Int, _ b:Int) -> Int64 {
    
    var sum : Int = 0
    let maxNum = max(a, b) // 두 값 중 큰 값 출력 실시
    let minNum = min(a, b) // 두 값 중 작은 값 출력 실시
        
    if a == b {
        sum = a
    } else {
        for i in minNum...maxNum {
            sum += i
        }
    } 
    
    return Int64(sum)
}
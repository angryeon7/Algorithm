func solution(_ seoul:[String]) -> String {
    
    var result = 0
    for i in 0..<seoul.count{
        if seoul[i] == "Kim"{
            result = i
            break
        }
    }
    return "김서방은 \(result)에 있다" 
}
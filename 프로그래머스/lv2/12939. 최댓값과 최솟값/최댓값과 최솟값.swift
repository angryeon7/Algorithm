func solution(_ s:String) -> String {
    var arr = s.split(separator: " ").map {Int($0)!} 
    var maxNum = arr[0]
    var minNum = arr[0]
    
    for i in 1..<arr.count{
          maxNum = max(maxNum, arr[i]) 
          minNum = min(minNum, arr[i])
    }
    
    let result = "\(minNum) \(maxNum)"
    return result
}
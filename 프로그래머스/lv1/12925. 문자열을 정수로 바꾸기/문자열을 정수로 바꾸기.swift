func solution(_ s:String) -> Int {
    
    var result : Int = 0
    var text = s[s.startIndex]
    var num = String(s.dropFirst(1))
    let n:Int = Int(num) ?? 0
    
    if text == "-"{
         result = n - (n * 2)
    } else if text == "+"{
       result = n
    } else {
       result = Int(s) ?? 0
    }
    return result
}
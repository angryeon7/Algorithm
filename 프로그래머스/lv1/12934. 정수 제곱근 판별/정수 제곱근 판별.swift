import Foundation
func solution(_ n:Int64) -> Int64 {
    
    let x = Int64(sqrt(Double(n)))
    var result:Int64 = 0
    
    if (x * x == n){
         result = (x + 1) * (x + 1)
    } else {
        result = -1
    }
    
    return result
}
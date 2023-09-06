import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var sum:Int = 0
    let arr = Array(s).map {String($0)}
    
    for i in 0..<arr.count {
        if arr[i] == "p" || arr[i] == "P"{
            sum = sum + 1
        } else if arr[i] == "y" || arr[i] == "Y" {
            sum = sum - 1
        } else {
            sum == sum
        }
    }
    
    if sum == 0 {
        ans = true
    }
   
    return ans
}
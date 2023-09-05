import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = true
    var num :Int = 0
    let arr = Array(s)
    
    for i in arr {
        if i == "("{
            num = num + 1
        } else {
            if num == 0 {
                ans = false
                break
            }
            else {
                 num = num - 1
            }
        }
        
    }
    if num != 0 {
        ans = false
    }
    
    return ans
}
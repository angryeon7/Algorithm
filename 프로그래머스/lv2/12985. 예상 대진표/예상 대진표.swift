import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 1
    var max = 0
    var min = 0
    
    if a > b {
        max = a
        min = b
    } else {
        max = b
        min = a
    }
    
    while(answer != n / 2){
        if (max - min == 1){
            if max % 2 == 0{
                break
            }
        }
        if min != 1 {
            min = min - (min / 2)
        } else {
            min = 1
        }
        max = max - (max / 2)
        answer += 1

    }

    return answer
}
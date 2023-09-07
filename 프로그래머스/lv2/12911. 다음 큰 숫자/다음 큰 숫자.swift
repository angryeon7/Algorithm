import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = n+1
    let binary: String = String(n, radix: 2)
    let cnt = binary.filter { $0 == "1" }.count
    
    while true {
        let cnt2 = String(answer, radix: 2).filter { $0 == "1" }.count
        if cnt == cnt2 {
            break
        }
        answer += 1
    }
    
    return answer
}
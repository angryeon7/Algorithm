import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    
    var arr = A.sorted()
    var arr2 = B.sorted(by:>)
    
    for i in 0..<A.count {
        ans += arr[i] * arr2[i]
    }

    return ans
}
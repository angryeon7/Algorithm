import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var arr = d.sorted()
    var max = 0
    var count = 0
    for i in 0..<d.count{
        max += arr[i]
        if max > budget {
            break
        } else {
            count += 1
        }
    }
    return count
}
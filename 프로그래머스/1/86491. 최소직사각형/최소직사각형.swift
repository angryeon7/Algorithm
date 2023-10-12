import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var max = 0
    var minArr = [Int](repeating: 1000, count: sizes.count)
    for i in 0..<sizes.count{
        for k in 0...1{
            if minArr[i] > sizes[i][k]{
                minArr[i] = sizes[i][k]
            }
            
            if max < sizes[i][k]{
                max = sizes[i][k]
            }
        }
    }
    
    return minArr.max()! * max
}
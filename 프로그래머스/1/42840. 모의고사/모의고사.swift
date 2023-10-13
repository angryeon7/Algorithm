import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var n = [[1,2,3,4,5],[2,1,2,3,2,4,2,5],[3,3,1,1,2,2,4,4,5,5]]
    var result = [0,0,0]
    
    for i in 0..<n.count{
        for j in 0..<answers.count{
            var k = j % n[i].count 
            if n[i][k] == answers[j]{
                result[i] += 1
            }
        }
    }
    // result.max()
    var max = Int(result.max()!)
    var arr : [Int] = []
    for (index, num) in result.enumerated() {
        if(num == max){
            arr.append(index + 1)
        }
    }
    return arr
}
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var result :[Int] = []
    for i in 0..<numbers.count{
        for j in i+1..<numbers.count{
            if result.contains(numbers[i]+numbers[j]) == false{
                result.append(numbers[i]+numbers[j])
            }  
        }
    }
    result.sort()
    return result
}
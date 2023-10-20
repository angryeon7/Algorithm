import Foundation

func solution(_ elements:[Int]) -> Int {
    
    var sumArray = [Int]()
    for num in 1..<elements.count + 1{
        var standard = 0
        while standard < elements.count{
            var n = 0
            var sum = 0
            while n < num{
                if standard + n > elements.count - 1 {
                    sum += elements[standard + n - elements.count]
                } else {
                    sum += elements[standard + n]
                }
                n += 1
            }
            sumArray.append(sum)
            standard += 1
        }

    }
    
    let removedArray: Set = Set(sumArray)
    
    return removedArray.count
}
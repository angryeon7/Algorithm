import Foundation

func solution(_ numbers:[Int]) -> [Int] { 
    
    var result = [Int](repeating: -1, count: numbers.count)
    var stack = [Int]()
    
    for i in 0..<numbers.count{
        while !stack.isEmpty && numbers[stack.last!] < numbers[i]{
            result[stack.popLast()!] = numbers[i]
        }
        stack.append(i)
    }

    return result
    
//시간초과 2문제
//     var result = [Int]()
//     var max = numbers.max()
//     for i in 0..<numbers.count{
//         if numbers[i] == max{
//             result.append(-1)
//             continue
//         }
//         for n in (i + 1)..<numbers.count{
//             if numbers[i] < numbers[n] {
//                 result.append(numbers[n])
//                 break
//             }
//         }
//         if result.count != i + 1{
//             result.append(-1)
//         }
//     }
//     return result
}


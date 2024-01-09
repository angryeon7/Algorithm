import Foundation

func isPrime(_ num: Int) -> Bool {
    guard num >= 2 else {
        return false
    }
    
    for i in 2..<Int(sqrt(Double(num))) + 1 {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}

func solution(_ numbers: String) -> Int {
    var answer = 0
    var uniqueNumbers = Set<Int>()

    // 가능한 모든 순열 생성
    func generatePermutations(_ str: String, current: String) {
        if !current.isEmpty {
            let num = Int(current)!
            uniqueNumbers.insert(num)
        }

        for i in str.indices {
            var newStr = str
            newStr.remove(at: i)
            generatePermutations(newStr, current: current + String(str[i]))
        }
    }

    generatePermutations(numbers, current: "")
    
    for num in uniqueNumbers {
        if isPrime(num) {
            answer += 1
        }
    }

    return answer
}
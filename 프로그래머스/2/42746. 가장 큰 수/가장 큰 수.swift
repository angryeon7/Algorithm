import Foundation

func solution(_ numbers:[Int]) -> String {
    var num = numbers.map{String($0)}
    num = num.sorted {
        if $0 + $1 > $1 + $0 {
            return true
        } else {
            return false
        }
    }
    var result = ""
    num.forEach {
        result += $0
    }
    if let intResult = Int(result) {
        result = String(intResult)
    }

    return result
}
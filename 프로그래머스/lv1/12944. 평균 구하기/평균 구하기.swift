func solution(_ arr:[Int]) -> Double {
    
    var sum = arr.reduce(0, +)
    var count = arr.count

    return Double(sum) / Double(count)
}
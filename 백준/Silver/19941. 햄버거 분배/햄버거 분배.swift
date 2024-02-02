import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var str = readLine()!.map{String($0)}

let n = input[0]
let k = input[1]

solution()

func solution() {
    var count = 0
    for i in 0..<n {
        if str[i] == "P" {
            for j in stride(from: i-k, through: i+k, by: 1) {
                if 0<=j && j<n && str[j] == "H" {
                    str[j] = "E"
                    count += 1
                    break
                }
            }
        }
    }
    print(count)
}
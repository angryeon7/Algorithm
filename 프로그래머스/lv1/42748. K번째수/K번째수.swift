import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result : [Int] = []
    for i in 0..<commands.count {
        var f = commands[i][0] - 1
        var l = commands[i][1] - 1
        var a = commands[i][2] - 1
        var arr = array[f...l].sorted()
        result.append(arr[a])
    }

    return result
}
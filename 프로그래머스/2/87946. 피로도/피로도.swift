import Foundation

var count = 0
var visited = [Bool]()

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    visited = Array(repeating: false, count: dungeons.count)
    DFS(k, 0, dungeons, [])
    return count
}

func DFS(_ curK: Int, _ curCount: Int, _ dungeons: [[Int]], _ curRoute: [Int]) {
    if curK >= 0 {
        count = max(count, curCount)
    }
    
    for idx in 0..<dungeons.count {
        if !visited[idx] && curK >= dungeons[idx][0] {
            visited[idx] = true
            DFS(curK - dungeons[idx][1], curCount + 1, dungeons, curRoute + [idx])
            visited[idx] = false
        }
    }
}

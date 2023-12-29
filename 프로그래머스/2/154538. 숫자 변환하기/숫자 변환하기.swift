import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var dp = [Int](repeating: Int.max, count: y+1)
    dp[x] = 0
    
    for i in x...y where dp[i] != Int.max {
        if i+n <= y { dp[i+n] = min(dp[i]+1, dp[i+n]) }
        if i*2 <= y { dp[i*2] = min(dp[i]+1, dp[i*2]) }
        if i*3 <= y { dp[i*3] = min(dp[i]+1, dp[i*3]) }
    }
    
    return dp[y] == Int.max ? -1 : dp[y]
}
import Foundation

func main() {
    let n = Int(readLine()!)!
    var dp = Array(repeating: Array(repeating: 0, count: 4), count: 10001)
    
    dp[1][1] = 1 
    dp[2][1] = 1 
    dp[2][2] = 1 
    dp[3][1] = 1 
    dp[3][2] = 1 
    dp[3][3] = 1 

    for i in 4...10000 {
        dp[i][1] = dp[i - 1][1]
        dp[i][2] = dp[i - 2][1] + dp[i - 2][2]
        dp[i][3] = dp[i - 3][1] + dp[i - 3][2] + dp[i - 3][3]
    }
    
    var result = ""
    for _ in 0..<n {
        let t = Int(readLine()!)! 
        result += "\(dp[t][1] + dp[t][2] + dp[t][3])\n" 
    }
    print(result)
}

main()

import Foundation

func solution(_ land:[[Int]]) -> Int{
    var answer = 0
    var dp: [[Int]] = Array(repeating: [0,0,0,0], count: land.count + 1)
    
    for i in 1..<land.count + 1{
        for j in 0..<4{
            for k in 0..<4{
                if(k != j){
                 dp[i][j] = max(dp[i][j], land[i - 1][j] + dp[i - 1][k])
                answer = max(answer, dp[i][j])
                }
            } 
        }
    }
    
    return answer
}
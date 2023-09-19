import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var ans = 0
    
    func dfs(index: Int, sum: Int) {
        // 재귀함수 탈출 조건
        if index == numbers.count {
            if sum == target {
                ans += 1
            }
            return 
        }
        dfs(index: index+1, sum: sum + numbers[index])
        dfs(index: index+1, sum: sum - numbers[index])
    } 
    dfs(index: 0, sum: 0)
    return ans
}
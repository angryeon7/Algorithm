let input = readLine()!.split(separator: " ").map { Int($0)! }
var num = readLine()!.split(separator: " ").map { Int($0)! }

let n = input[0]
let m = input[1]

num.sort()

var result = ""
var stack = [String]()

func dfs(_ depth: Int) {
    if depth == m {
        result += stack.joined(separator: " ") + "\n"
        return
    }
    
    for i in 0..<n {
        stack.append(String(num[i]))
        dfs(depth + 1)
        stack.popLast()
    }
}
dfs(0)
print(result)
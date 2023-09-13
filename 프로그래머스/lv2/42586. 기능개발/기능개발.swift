import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var result = [Int](repeating: 0, count: speeds.count)
    var pr = progresses
    var ans : [Int] = []
    
    while pr.filter { $0 >= 100 }.count != pr.count {
        for i in 0..<speeds.count{
            if pr[i] < 100{
                pr[i] += speeds[i]
                result[i] += 1
            }    
        }  
    }
  
    print(result)
    // [7,3,9]
    // [5,10,1,1,20,1]
    var i = 1
    var n = 0
    while n < result.count{
        while result[n+i] <= result[n]{
            i+=1
            if  n + i == result.count{
                break
            }
        }
        ans.append(i)
        n = n+i
        i = 1
        
        if n == result.count - 1{
            ans.append(i)
            return ans
        }
    }

    return ans
}